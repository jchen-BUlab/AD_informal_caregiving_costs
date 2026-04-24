This repository contains the R Markdown notebooks used for the ADcost analyses.

For open-source release, the notebooks now assume a project-local layout by
default:

- `data/` for input `.RData`, `.csv`, and raw study extracts
- `results/` for generated tables, figures, and model outputs

Most notebooks use the processed dataset directory `data/20251029_7c/`.

## Running the notebooks

1. Put the processed input files under `data/20251029_7c/`.
2. For the harmonization notebooks, place the raw study files under:
   - `data/raw/fair-geras-eu-00003-6937-806/fair-geras-eu-00003-6937-806/`
   - `data/raw/fair-geras-us-00004-4594-665/fair-geras-us-00004-4594-665/`
   - `data/raw/fair-geras-japan-4581-662/fair-geras-japan-4581-662/`
   - `data/raw/fair-geras-ii-4595-664/fair-geras-ii-4595-664/`
3. Knit the `.Rmd` notebooks from the repository root.

## Optional Environment Variables

If your data lives elsewhere, you can override the defaults with environment
variables before running a notebook:

- `ADCOST_DATA_DIR`
- `ADCOST_RESULTS_DIR`
- `ADCOST_GERAS_EU_DIR`
- `ADCOST_GERAS_US_DIR`
- `ADCOST_GERAS_JP_DIR`
- `ADCOST_GERAS_II_DIR`
- `ADCOST_GERAS_EU_PREFIX`
- `ADCOST_GERAS_US_PREFIX`
- `ADCOST_GERAS_JP_PREFIX`
- `ADCOST_GERAS_II_PREFIX`
