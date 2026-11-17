# Resume

An HTML/PDF resume built with R Markdown and [pagedown](https://pagedown.rstudio.com/). The content (positions, skills, contact info, text blocks) lives in a Google Sheet and is pulled in at render time, so updating the resume means editing the sheet and re-rendering.

## Files

| File                  | Purpose                                            |
|-----------------------------|-------------------------------------------|
| `kyle_resume.Rmd`     | Resume template (`pagedown::html_resume`)          |
| `gather_data.R`       | Reads the Google Sheet tabs into data frames       |
| `parsing_functions.R` | Helpers that turn the data into resume sections    |
| `render_report.R`     | Renders the HTML and exports the PDF to `outputs/` |
| `css/`                | Custom styles                                      |
| `images/`             | Profile photo                                      |
| `outputs/`            | Rendered `kyle_resume.html` and `kyle_resume.pdf`  |

## Requirements

- R (developed with 4.5.x) and the packages locked in `renv.lock`
- Google Chrome or Chromium (used by `pagedown::chrome_print()` for the PDF)

Restore packages with:

``` r
renv::restore()
```

## Usage

``` r
source("render_report.R")
```

This writes `outputs/kyle_resume.html` and `outputs/kyle_resume.pdf`.

## Using your own data

The sheet location is set by `sheet_loc` in `gather_data.R`. To use this for your own resume, copy the Google Sheet, share it as "anyone with the link can view" (the script reads it with `googlesheets4::gs4_deauth()`, so no login is needed), and replace the URL.

The sheet needs these tabs:

| Tab | Used for |
|------------------------|-----------------------------------------------|
| `positions` | Work/education entries; rows with `in_resume` set to TRUE are included |
| `skills` | Skill bars |
| `contact_info` | Aside contact list (`icon`, `contact` columns) |
| `text_block` | Intro text |

Also swap the photo referenced in `kyle_resume.Rmd` (`images/`) and update the name/title in the YAML header.

---

*This README was written with the assistance of AI (Posit Assistant).*