## ----setup, include = FALSE---------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)
library(cdiscdata)

## -----------------------------------------------------------------------------
list_datasets()
cdiscdata_versions()

## -----------------------------------------------------------------------------
ct <- get_ct("sdtm")
nrow(ct)
head(ct[, c("codelist_code", "codelist_name", "term", "decoded_value")])

## -----------------------------------------------------------------------------
versions <- available_ct_versions("sdtm")
head(versions)

# Get CT as it was at the second-most-recent release
if (length(versions) >= 2) {
  ct_old <- get_ct("sdtm", version = versions[[2]])
  nrow(ct_old)
}

## -----------------------------------------------------------------------------
schema_path("2.1")
stylesheet_path("2.1")

## -----------------------------------------------------------------------------
get_dataset("define_xml_schema", version = "2.1")

ct_via_generic <- get_dataset("ct_sdtm")
nrow(ct_via_generic)
head(ct_via_generic[, c("codelist_code", "term", "valid_from", "valid_to")])

