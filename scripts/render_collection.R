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
      
      # Rename and clip unnecessary columns
      df <-
        df %>% 
        rename(Description = description, Topics = topics) %>%
        select(`Book Name`, Description, Topics)
      
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
               Description = "none",
               Topics = "none")
      
      return(df)
    }
  )
  
  return(df)
}
