library(dplyr)
library(stringr)

make_collection_table <- function(exclude = NULL) {
  # Read in repos found by GHA
  df <- tryCatch(
    # Check for the file created by GHA
    expr = {
      df <-
        readr::read_tsv("resources/collection.tsv")
      
      # Filter out any user specified repos (could be some that are in progress,
      # templates, etc)
      df <-
        df %>%
        filter(!(name %in% exclude))
      
      # Do some cleaning of strings
      df$name <-
        df$name %>%
        stringr::str_replace_all("_Book_", ": ") %>%
        stringr::str_replace_all("_", " ")
      
      # Concatenate columns to create links
      df <-
        df %>%
        mutate(`Book Name` = paste0("[", name, "](", homepage, ") ([github](", html_url, "))")) %>%
        rename(Description = description, Topics = topics) %>%
        select(`Book Name`, Description, Topics)
    },
    # Will error out if file doesn't exist - provides a blank tibble instead
    error = function(e) {
      df <- tibble(name = "none", html_url = "none")
    }
  )
  
  return(df)
}
