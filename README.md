# County Health Rankings & Roadmaps  

This repository is a work in progress. It contains code and data to replicate some measures for the [County Health Rankings & Roadmaps annual data release](https://www.countyhealthrankings.org/health-data). 
At this time, we do not plan to make historical calculations public - this repo may be useful for replicating parts of the 2025 and 2026 releases only. 

## Repository Structure
  
* **`inputs/`** – Standardized reference files used across multiple measures (e.g., crosswalks, FIPS codes).  

* **`measure_datasets/`** – Intermediate datasets with calculated values for specific health measures.  

* **`raw_data/`** – Original, unprocessed data files from source systems or data providers.  
  - This folder is organized by data source. 
  - *Note: Some raw data are not included if they are not publicly available.*

* **`scripts/`** – R scripts (`.qmd`, `.Rmd`) and some SAS files for data cleaning, calculation, and formatting of measures.  
  
We recommend using the `haven` R package to read `.sas7bdat` files in R. 

If you prefer data or calculations in a different format, are looking for a specific measure not yet included, or have questions, please reach out via the [Discussions tab](https://github.com/County-Health-Rankings-and-Roadmaps/chrr_measure_calcs/discussions).

If you're looking for downloadable datasets (formatted for easy reading) or relational datasets (structured for analysis), you can find them by checking out [County Health Rankings & Roadmaps on Zenodo](https://zenodo.org/communities/countyhealthrankingsandroadmaps/records?q=&l=list&p=1&s=10&sort=newest). 

You can also email us at **info@countyhealthrankings.org**.
