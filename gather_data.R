library(googlesheets4)

sheet_loc <- "https://docs.google.com/spreadsheets/d/1wOAuth6R5XZjoI-9tKgHGTex7mwuGyceyhitDuq3nik"

gs4_deauth()

position_data <- read_sheet(sheet_loc, sheet = "positions")
skills        <- read_sheet(sheet_loc, sheet = "skills")
contact_info  <- read_sheet(sheet_loc, sheet = "contact_info")
text_blocks   <- read_sheet(sheet_loc, sheet = "text_block")
