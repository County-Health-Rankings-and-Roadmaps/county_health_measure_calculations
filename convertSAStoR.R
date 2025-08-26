# Script to convert JR's relational data from sas7bdat to csv and save to project 

# Load necessary library
library(haven)

# Define the years and folder paths
years <- 2022:2025
base_input <- "P:/CH-Ranking/Data/Cumulative Analytic Datasets" 
output_base <- file.path(getwd(), "relational_data")

# Create output folders if they don't exist
if (!dir.exists(output_base)) dir.create(output_base)

for (year in years) {
  input_folder <- file.path(base_input, paste0(year, " Data"))
  output_folder <- file.path(output_base, as.character(year))
  
  if (!dir.exists(output_folder)) dir.create(output_folder, recursive = TRUE)
  
  # List all .sas7bdat files
  sas_files <- list.files(input_folder, pattern = "\\.sas7bdat$", full.names = TRUE)
  
  for (file_path in sas_files) {
    # Read .sas7bdat file
    df <- read_sas(file_path)
    
    # Create output filename
    file_name <- tools::file_path_sans_ext(basename(file_path))
    output_path <- file.path(output_folder, paste0(file_name, ".csv"))
    
    # Write to CSV
    write.csv(df, output_path, row.names = FALSE)
  }
}


