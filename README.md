# County Health Rankings & Roadmaps 2025 

This repository is a work in progress. It contains code and data to replicate some measures for the [County Health Rankings & Roadmaps 2025 data release](https://www.countyhealthrankings.org/health-data).

## Contents

You will find:

* R code in `.qmd` and `.Rmd` files for calculating most measures
* A few SAS scripts for specific measures only
* Complete datasets for the 2025 release

### Folder Structure

* **`complete_datasets/`** – Finalized datasets prepared for the 2025 release, ready for analysis or public distribution.
* **`dictionaries_and_documentation/`** – Codebooks, data dictionaries, methodology notes, and other documentation to support data understanding and use.
* **`inputs/`** – Standardized reference data used across multiple measures (e.g., crosswalks, FIPS codes).
* **`measure_datasets/`** – Intermediate datasets that contain calculations for specific health measures.
* **`raw_data/`** – Original, unprocessed data files as obtained from source systems or data providers. *Note: For some select measures, no data are included in this folder because the raw data are not publicly available.*
* **`scripts/`** – R and SAS codes used for data processing, cleaning, measure calculation, and formatting.


If you prefer data or calculations in a different format, if there's a particular measure you need that isn't yet included, or if you have questions, please feel free to reach out via the [Discussions tab](https://github.com/County-Health-Rankings-and-Roadmaps/chrr_measure_calcs/discussions).

We can also be reached via email at **info@countyhealthrankings.org**
