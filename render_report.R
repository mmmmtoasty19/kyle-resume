
# Have to set this prior to running RMD Document
Sys.setenv(RSTUDIO_PANDOC="C:/Users/belangew/AppData/Local/Pandoc")

rmarkdown::render("kyle_resume.Rmd", output_format = "all")
