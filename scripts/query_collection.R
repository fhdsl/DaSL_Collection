#!/usr/bin/env Rscript

library(optparse)
library(httr)
library(jsonlite)
library(dplyr)
library(readr)
library(tidyr)
library(stringr)

# --------- Get the Github Token ---------

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

# --------- Set url and token ---------

message(paste("Querying Github API..."))

# Request search results specific to jhudsl + fhdsl + DataTrail organizations
# Also allows us to pull in repos forked into these organizations
url <- "https://api.github.com/search/repositories?q=user:jhudsl+user:fhdsl+user:datatrail-jhu+fork:true&per_page=50"

# Provide the appropriate GH token & Make the request
req <- GET(url = url, config = add_headers(Authorization = paste("token", git_pat)))

if (!(httr::http_error(req))) {
  message(paste("API request successful!"))
} else {
  stop("API request failed!")
}

# --------- Traverse pages ---------

# Pull out the last page number of the request
last <- str_extract(req$headers$link, pattern = '.(?=>; rel=\"last\")')

full_repo_df <- tibble()
for (page in 1:last){

  url <- paste0("https://api.github.com/search/repositories?q=user:jhudsl+user:fhdsl+user:datatrail-jhu+fork:true&per_page=50&page=", page)
  message(paste("Gathering results from:", url))
  req <- GET(url = url, config = add_headers(Authorization = paste("token", git_pat)))
  repo_dat <-
    jsonlite::fromJSON(httr::content(req, as = "text"), flatten = TRUE)
  message(paste("... Gathered", nrow(repo_dat$items), "repositories."))

  repo_dat$items$funding <- lapply(repo_dat$items$topics, function(x) x[x %in% c("anvil", "itn-course", "daseh", "gdscn", "hutch-course")])
  repo_dat$items$funding <- lapply(repo_dat$items$funding, function(x) replace(x, rlang::is_empty(x), NA) )

  repo_df <-
    tibble(repo_dat$items) %>%
    select(full_name, homepage, html_url, description, private) %>%
    separate(full_name, into = c("org", "name"), sep = "/") %>%

    # Add "DataTrail:" to datatrail repo names
    mutate(name = case_when(
      org == "datatrail-jhu" ~ paste("DataTrail:", name),
      TRUE ~ name)) %>%

    # Collapse topics so they can be printed
    bind_cols(tibble(topics = unlist(
      lapply(repo_dat$items$topics, paste, collapse = ", ")
    ))) %>%
    
    # Collapse funding sources so they can be printed
    bind_cols(tibble(funding = unlist(
      lapply(repo_dat$items$funding, paste, collapse = ", ")
    ))) %>%

    # Drop private repos and remove org column
    filter(!(private)) %>%
    select(!c(private, org)) %>%

    # Rearrange columns
    relocate(description, .before = topics) %>%

    # Keep only those with homepages and descriptions
    filter(!(is.na(homepage)), homepage != "",!(is.na(description)))

  full_repo_df <- rbind(full_repo_df, repo_df) %>%
    dplyr::arrange(name)
}

# --------- Save the collection ---------

# Create an artifact file containing the repos, else write an empty file
if (!dir.exists("resources")) {
  dir.create("resources")
}
if (nrow(full_repo_df) > 0) {
  readr::write_tsv(full_repo_df, file.path('resources', 'collection.tsv'))
} else {
  readr::write_tsv(tibble(), file.path('resources', 'collection.tsv'))
}
