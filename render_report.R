quarto::quarto_render(
  "kyle_resume.qmd",
  output_file = "kyle_resume.pdf",
  quarto_args = c("--output-dir", "outputs")
)
