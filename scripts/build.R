library(rmarkdown)
print(getwd())
# render(
#   input = 'index.Rmd',
#   output_file = "index.md",
#   output_format = md_document(variant = "markdown_phpextra", preserve_yaml = TRUE)
# )
render(
  input = 'index.Rmd',
  output_file = "index.html",
  output_format = "html_document"
)