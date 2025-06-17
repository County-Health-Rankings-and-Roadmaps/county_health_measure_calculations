# County Health Rankings & Roadmaps 2025 

This repository is a work in progress. It contains code and data to replicate some measures for the [County Health Rankings & Roadmaps 2025 data release](https://www.countyhealthrankings.org/health-data).

## Repository Structure

* **`complete_datasets/`** – Finalized datasets prepared for the 2025 release, ready for analysis or public distribution.
* **`dictionaries_and_documentation/`** – Codebooks, data dictionaries, methodology notes, and other documentation to support data understanding and use.
* **`inputs/`** – Standardized reference data used across multiple measures (e.g., crosswalks, FIPS codes).
* **`measure_datasets/`** – Intermediate datasets that contain calculations for specific health measures.
* **`raw_data/`** – Original, unprocessed data files as obtained from source systems or data providers. *Note: For some select measures, no data are included in this folder because the raw data are not publicly available.*
* **`scripts/`** – R code in `.qmd` and `.Rmd` files for most measures and SAS scripts for specific measures only. These files contain code for data cleaning, calculation, and formatting.

We recommend the `haven` R package to read `.sas7bdat` files in R. 

If you prefer data or calculations in a different format, are looking for a specific measure not yet included, or have questions, please reach out via the [Discussions tab](https://github.com/County-Health-Rankings-and-Roadmaps/chrr_measure_calcs/discussions).

We can also be reached via email at **info@countyhealthrankings.org**
