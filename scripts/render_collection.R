library(dplyr)
library(stringr)

make_collection_table <- function(exclude = NULL, include = NULL, kable = FALSE) {
  # Read in repos found by GHA
  df <- tryCatch(
    # Check for the file created by GHA
    expr = {
      df <-
        readr::read_tsv("resources/collection.tsv")
      
      # Do some cleaning of strings
      df$name <-
        df$name %>%
        stringr::str_replace_all("_Book_", ": ") %>%
        stringr::str_replace_all("_", " ")
      
      # Concatenate columns to create links
      # kable = TRUE creates a markdown compatible kable table
      # kable = FALSE creates an html table, such as one necessary for DT::datatable()
      if(kable){
        df <-
          df %>%
          mutate(`Book Name` = paste0("[", name, "](", homepage, ") ([github](", html_url, "))"))
      } else {
        df <-
          df %>%
          mutate(`Book Name` = paste0('<a href="', homepage, '">', name, '</a>'))
          #mutate(`Book Name` = paste0('<a href="', homepage, '">', name, '</a> (<a href="', html_url, '">github</a>)'))
          #mutate(topics = str_replace_all(topics, pattern = ", ", replacement = "<br>"))
      }
      
      # Add logos for funding and link to appropriate about pages
      df <- 
        df %>%
        mutate(funding = case_when(
          stringr::str_detect(funding, "hutch-course") ~ paste0(
            funding,
            '<a href =\"https://www.fredhutch.org/en/about/about-the-hutch.html\" target=\"_blank\"<div title =\"About Fred Hutch\"></div><img src=\"https://raw.githubusercontent.com/fhdsl/DaSL_Collection/main/resources/images/fhlogo.png\" height=\"40\"></img><p class=\"image-name\">Fred Hutch</p></a>'
          ),
          TRUE ~ funding
        )) %>%
        mutate(funding = case_when(
          stringr::str_detect(funding, "anvil") ~ paste0(
            funding,
            '<a href =\"https://www.anvilproject.org\" target=\"_blank\"<div title =\"About AnVIL\"></div><img src=\"https://raw.githubusercontent.com/fhdsl/DaSL_Collection/main/resources/images/logo-anvil-img.png\" height=\"40\"></img><p class=\"image-name\">AnVIL</p></a><br>'
          ),
          TRUE ~ funding
        )) %>%
        mutate(funding = case_when(
          stringr::str_detect(funding, "gdscn") ~ paste0(
            funding,
            '<a href =\"https://www.gdscn.org\" target=\"_blank\"<div title =\"About GDSCN\"></div><img src=\"https://raw.githubusercontent.com/fhdsl/DaSL_Collection/main/resources/images/logo-gdscn.png\" height=\"40\"></img><p class=\"image-name\">GDSCN</p></a>'
          ),
          TRUE ~ funding
        )) %>%
        mutate(funding = case_when(
          stringr::str_detect(funding, "daseh") ~ paste0(
            funding,
            '<a href =\"https://www.daseh.org\" target=\"_blank\"<div title =\"About DaSEH\"></div><img src=\"https://raw.githubusercontent.com/fhdsl/DaSL_Collection/main/resources/images/logo_icon_medium.png\" height=\"40\"></img><p class=\"image-name\">DaSEH</p></a>'
          ),
          TRUE ~ funding
        )) %>%
        mutate(funding = case_when(
          stringr::str_detect(funding, "itn-course") ~ paste0(
            funding,
            '<a href =\"https://www.itcrtraining.org/\" target=\"_blank\"<div title =\"About ITN\"></div><img src=\"https://raw.githubusercontent.com/fhdsl/DaSL_Collection/main/resources/images/ITNlogo.png\" height=\"40\"></img><p class=\"image-name\">ITN</p></a>'
          ),
          TRUE ~ funding
        )) %>%
      
        mutate(funding = gsub("^.*?<a href", "<a href", funding)) # trim any leading funding sources
      
      # Rename and clip unnecessary columns
      df <-
        df %>% 
        rename(Description = description, Topics = topics, Funding = funding) %>%
        select(`Book Name`, Funding, Description, Topics)
      
      # Remove duplicates if necessary
      df <- distinct(df)
      
      # Filter if desired
      if(!is.null(include)){
        df <- 
          df %>% filter(stringr::str_detect(Topics, paste(include, collapse = "|")))
      }
      if(!is.null(exclude)){
        df <- 
          df %>% filter(!stringr::str_detect(Topics, paste(exclude, collapse = "|")))
      }
      
      return(df)
    },
    # Will error out if file doesn't exist - provides a blank tibble instead
    error = function(e) {
      df <-
        tibble(`Book Name` = "none",
               Funding = "none",
               Description = "none",
               Topics = "none")
      
      return(df)
    }
  )
  
  return(df)
}
