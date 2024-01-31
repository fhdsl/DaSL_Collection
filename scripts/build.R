print(getwd())
bookdown::render_book('index.Rmd', output_format = 'all')
file.copy(from = 'assets',
          to = 'docs/assets',
          overwrite = TRUE)