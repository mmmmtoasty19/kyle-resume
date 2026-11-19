# Resume

A PDF resume built with [Quarto](https://quarto.org/) and Typst, using the [awesomecv-typst](https://github.com/kazuyanagimoto/quarto-awesomecv-typst) template and the [typstcv](https://github.com/kazuyanagimoto/typstcv) R package. Positions and the intro text live in a Google Sheet and are pulled in at render time, so updating the resume means editing the sheet and re-rendering.

## Files

| File | Purpose |
|------------------------|-------------------------------------------------|
| `kyle_resume.qmd` | Resume document (contact info and styling in the YAML header) |
| `gather_data.R` | Reads the Google Sheet tabs into data frames |
| `render_report.R` | Renders the PDF to `outputs/kyle_resume.pdf` |
| `_extensions/` | The awesomecv-typst Quarto extension |
| `assets/icon/` | SVG icons for the contact line |
| `archive/` | Previous pagedown (HTML/PDF) version, kept for reference |
| `images/` | Profile photo (optional, see below) |

## Requirements

- R (developed with 4.5.x) and the packages locked in `renv.lock`
- [Quarto](https://quarto.org/docs/get-started/) 1.5 or later (Typst is bundled)
- The Calibri font (swap the font names in the YAML header if it is not available)

Restore packages with:

``` r
renv::restore()
```

## Usage

``` r
source("render_report.R")
```

## Using your own data

The sheet location is set by `sheet_loc` in `gather_data.R`. Copy the Google Sheet, share it as "anyone with the link can view" (the script reads it with `googlesheets4::gs4_deauth()`, so no login is needed), and replace the URL.

| Tab | Used for |
|------------------------|-----------------------------------------------|
| `positions` | Work/education entries; rows with `in_resume` set to TRUE are included |
| `text_block` | Summary text (row where `loc` is `intro`) |
| `contact_info`, `skills` | Read but not used by the current layout |

Name, title and contact details are set in the YAML header of `kyle_resume.qmd`.

## Profile photo

The template supports a profile photo through the `profile-photo` key in the YAML header of `kyle_resume.qmd`. It is commented out by default. To use it, uncomment the line and point it at an image, for example `images/IMG_0387.JPG`.

## Credits

- Nick Strayer's [data-driven CV](https://github.com/nstrayer/cv) approach (the original design of the pagedown version)
- Kazuharu Yanagimoto's [quarto-awesomecv-typst](https://github.com/kazuyanagimoto/quarto-awesomecv-typst) and [typstcv](https://github.com/kazuyanagimoto/typstcv)
- Based on the Awesome-CV LaTeX template by Byungjin Park

---

*This README was written with the assistance of AI (Posit Assistant).*
