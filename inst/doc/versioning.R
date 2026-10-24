## ----setup, include = FALSE---------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)
library(cdiscdata)

## -----------------------------------------------------------------------------
# How many rows represent "closed" (historical) term states?
n_closed  <- sum(!is.na(ct_sdtm$valid_to))
n_current <- sum(is.na(ct_sdtm$valid_to))
cat("Current rows:", n_current, "\nHistorical rows:", n_closed, "\n")

