#!/usr/bin/env Rscript

library(optparse)
library(httr)
library(jsonlite)
library(dplyr)
library(readr)

option_list <- list(
  optparse::make_option(
    c("--git_pat"),
    type = "character",
    default = NULL,
    help = "GitHub personal access token",
  )
)

# Read the GH_PAT argument
opt_parser <- optparse::OptionParser(option_list = option_list)
opt <- optparse::parse_args(opt_parser)
git_pat <- opt$git_pat

message(paste("Querying Github API..."))

# Request search results specific to jhudsl + fhdsl organizations
# and provide the appropriate GH token
req <- httr::GET(
  "https://api.github.com/search/repositories?q=user:jhudsl+user:fhdsl+fork:true&per_page=500",
  httr::add_headers(Authorization = paste("token", git_pat))
)

if (!(httr::http_error(req))) {
  message(paste("API request successful!"))
  
  # Read in
  repo_dat <-
    jsonlite::fromJSON(httr::content(req, as = "text"), flatten = TRUE)
  message(paste("...", repo_dat$total_count, " repositories detected."))
  
  repo_df <-
    tibble(repo_dat$items) %>%
    select(name, homepage, html_url, description, private) %>% 
    # Collapse topics so they can be printed
    bind_cols(tibble(topics = unlist(
      lapply(repo_dat$items$topics, paste, collapse = ", ")
    ))) %>%
    # Drop private repos
    filter(!(private)) %>% 
    select(!(private)) %>%
    # Rearrange columns
    relocate(description, .before = topics) %>%
    # Keep only those with homepages and descriptions
    filter(!(is.na(homepage)), homepage != "",!(is.na(description)))
  
  message(paste(
    "...",
    nrow(repo_df),
    "repositories with homepage & description."
  ))
  
  # Create an artifact file containing the repos, else write an empty file
  if (!dir.exists("resources")) {
    dir.create("resources")
  }
  if (nrow(repo_df) > 0) {
    readr::write_tsv(repo_df, file.path('resources', 'collection.tsv'))
  } else {
    readr::write_tsv(tibble(), file.path('resources', 'collection.tsv'))
  }
  
} else {
  message(paste("API request failed!"))
  if (!dir.exists("resources")) {
    dir.create("resources")
  }
  readr::write_tsv(tibble(), file.path('resources', 'collection.tsv'))
}
