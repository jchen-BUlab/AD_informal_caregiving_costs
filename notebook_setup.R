#****************************************
# MIT License
# Copyright (c) 2026 Jinying Chen
#  
# author(s): Jinying Chen, Boston University Chobanian & Avedisian School of Medicine
# release date: 2026-4-20
# ver: 1.0
# 
# This code was written to support data analysis for the gender differences in AD 
# costs project and the 2026 paper published in BMC Public Health.
# The code is for research use only, and is provided as it is.
# 

normalize_release_path <- function(path) {
  gsub("\\\\", "/", path)
}

project_path <- function(...) {
  normalize_release_path(file.path(getwd(), ...))
}

project_dir <- function(parts, envvar = NULL, create = FALSE) {
  default_path <- do.call(project_path, as.list(parts))
  resolved <- if (is.null(envvar)) {
    default_path
  } else {
    Sys.getenv(envvar, unset = default_path)
  }

  resolved <- normalize_release_path(resolved)

  if (create) {
    dir.create(resolved, recursive = TRUE, showWarnings = FALSE)
  }

  if (!grepl("/$", resolved)) {
    resolved <- paste0(resolved, "/")
  }

  resolved
}

project_prefix <- function(parts, envvar = NULL) {
  default_path <- do.call(project_path, as.list(parts))
  resolved <- if (is.null(envvar)) {
    default_path
  } else {
    Sys.getenv(envvar, unset = default_path)
  }

  normalize_release_path(resolved)
}
