library(rmarkdown)
render(
  input = "index.Rmd",
  output_file = "_pages/index.md",
  output_format = md_document(variant = "markdown_phpextra", preserve_yaml = TRUE)
)
