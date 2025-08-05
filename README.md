# County Health Rankings & Roadmaps  

This repository is a work in progress. It contains code and data to replicate some measures for the [County Health Rankings & Roadmaps annual data release](https://www.countyhealthrankings.org/health-data).

## Repository Structure

* **`complete_datasets/`** – Finalized datasets formatted for our website. These datasets are structured for human readability.  
  - This folder contains **year-specific subfolders**, each holding the finalized datasets for that year's release.

* **`dictionaries_and_documentation/`** – Data dictionaries, technical notes, and other documentation to support understanding and use of the data.  
  - This folder contains **year-specific subfolders**, each holding the documentation for that year's release.

* **`relational_datasets/`** – Relational hierarchy of measure metadata. Most useful for analysts interested in exploring measure weights, definitions, and model position.     
 - This folder contains **year-specific subfolders**, each holding the relational data for that year's release.
   
* **`inputs/`** – Standardized reference files used across multiple measures (e.g., crosswalks, FIPS codes).  
  - Currently available **only for the 2025 and partially for the 2026 release**. This folder is not organized by year. 

* **`measure_datasets/`** – Intermediate datasets with calculated values for specific health measures.  
  - Currently available **only for the 2025 and partially for the 2026 release**. This folder is not organized by year. 

* **`raw_data/`** – Original, unprocessed data files from source systems or data providers.  
  - Currently available **only for the 2025 and partially for the 2026 release**. This folder is not organized by year. 
  - *Note: Some raw data are not included if they are not publicly available.*

* **`scripts/`** – R scripts (`.qmd`, `.Rmd`) and some SAS files for data cleaning, calculation, and formatting of measures.  
  - Currently available **only for the 2025 and partially for the 2026 release**. This folder is not organized by year.  
---

We recommend using the `haven` R package to read `.sas7bdat` files in R. 

If you prefer data or calculations in a different format, are looking for a specific measure not yet included, or have questions, please reach out via the [Discussions tab](https://github.com/County-Health-Rankings-and-Roadmaps/chrr_measure_calcs/discussions).

You can also email us at **info@countyhealthrankings.org**.
