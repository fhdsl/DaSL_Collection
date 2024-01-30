# library(rmarkdown)
print(getwd())
# render(
#   input = 'index.Rmd',
#   output_file = "index.md",
#   output_format = md_document(variant = "markdown_phpextra", preserve_yaml = TRUE)
# )
bookdown::render_book('index.Rmd', output_format = 'all')
file.copy(from = 'assets',
          to = 'docs/assets',
          overwrite = TRUE)

output_dir = file.path("docs", "no_toc")
output_yaml = "_output.yml"
convert_quizzes = FALSE
input_quiz_dir = "quizzes"
output_quiz_dir = "coursera_quizzes"
verbose = TRUE

root_dir <- ottrpal::bookdown_path()
output_dir <- file.path(root_dir, output_dir)
if (!dir.exists(output_dir)) {
  message(paste0("Creating output folder: ", output_dir))
  dir.create(output_dir, recursive = TRUE, showWarnings = FALSE)
}
toc_close_css <- file.path(root_dir, "assets", "toc_close.css")
if (!file.exists(toc_close_css)) {
  download.file(
    "https://raw.githubusercontent.com/jhudsl/ottrpal/master/inst/extdata/toc_close.css",
    destfile = toc_close_css
  )
}
output_yaml_file <- file.path(root_dir, output_yaml)
if (!file.exists(toc_close_css)) {
  stop(paste0("Could not find: ", toc_close_css))
}
if (!file.exists(output_yaml_file)) {
  stop(paste0("Could not find: ", output_yaml_file))
}
old_files <- list.files(output_dir,
                        pattern = c("html$",
                                    "md$"),
                        full.names = TRUE)
if (length(old_files) > 0) {
  file.remove(old_files)
}
needed_directories <- c("assets", "resources")
if (verbose) {
  message(paste0(c("Needed directories being copied:"),
                 collapse = "\n"))
}
lapply(needed_directories, function(needed_dir) {
  if (verbose) {
    message(needed_dir)
  }
  if (!dir.exists(needed_dir)) {
    stop(paste0(
      "Needed directory:",
      needed_dir,
      "does not exist in the current path."
    ))
  }
  if (!dir.exists(file.path(output_dir, needed_dir))) {
    fs::dir_copy(needed_dir, file.path(output_dir, needed_dir),
                 overwrite = TRUE)
  }
})
libs_path <- file.path("docs", "libs")
if (!dir.exists(file.path(output_dir, "libs"))) {
  if (verbose) {
    message(file.path("docs", "libs"))
  }
  fs::dir_copy(libs_path, file.path(output_dir, "libs"),
               overwrite = TRUE)
}
output_yaml_lines <- yaml::yaml.load_file(output_yaml_file)
org_css_file <- output_yaml_lines$`bookdown::gitbook`$css
if (length(org_css_file) > 1) {
  css_files_read <- sapply(org_css_file, readLines)
  if (verbose) {
    message("Combining .css files")
  }
  css_lines_cat <- rbind(unlist(css_files_read))
  css_file <- file.path(output_dir, org_css_file[1])
  writeLines(css_lines_cat, css_file)
} else {
  css_file <- file.path(output_dir, org_css_file)
  fs::file_copy(org_css_file, css_file, overwrite = TRUE)
}
message("Render bookdown without TOC")
bookdown::render_book(input = "index.Rmd",
                      output_yaml = output_yaml_file,
                      output_dir = output_dir)
toc_close_css_lines <- readLines(toc_close_css)
full_css <- suppressWarnings(readLines(css_file))
writeLines(append(full_css, toc_close_css_lines), css_file)
if (convert_quizzes) {
  if (!dir.exists(input_quiz_dir)) {
    stop(
      "convert_quizzes = TRUE but the specified input_quiz_dir: ",
      input_quiz_dir,
      " cannot be found."
    )
  }
  convert_coursera_quizzes(
    input_quiz_dir = input_quiz_dir,
    output_quiz_dir = output_quiz_dir,
    verbose = verbose
  )
}
