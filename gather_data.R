

sheet_loc <- "https://docs.google.com/spreadsheets/d/1wOAuth6R5XZjoI-9tKgHGTex7mwuGyceyhitDuq3nik"

googlesheets4::gs4_deauth()

position_data <- googlesheets4::read_sheet(sheet_loc, sheet = "positions")
skills        <- googlesheets4::read_sheet(sheet_loc, sheet = "skills")
contact_info  <- googlesheets4::read_sheet(sheet_loc, sheet = "contact_info")
text_blocks   <- googlesheets4::read_sheet(sheet_loc, sheet = "text_block")
