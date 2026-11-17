dir.create("outputs", showWarnings = FALSE)

html <- rmarkdown::render(
  "kyle_resume.Rmd",
  output_dir = "outputs",
  knit_root_dir = getwd()
)

pagedown::chrome_print(html, output = "outputs/kyle_resume.pdf")
