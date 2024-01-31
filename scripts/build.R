# library(rmarkdown)
print(getwd())
# render(
#   input = 'index.Rmd',
#   output_file = "index.md",
#   output_format = md_document(variant = "markdown_phpextra", preserve_yaml = TRUE)
# )
# bookdown::render_book('index.Rmd', output_format = 'all')
file.copy(from = 'assets',
          to = 'docs/assets',
          overwrite = TRUE)
rmarkdown::render(
  input = 'index.Rmd',
  output_file = "index.html",
  output_format = html_document(output_dir = "docs"),
  output_dir = "docs",
)