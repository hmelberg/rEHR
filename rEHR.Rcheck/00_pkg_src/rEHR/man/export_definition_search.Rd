% Generated by roxygen2 (4.0.2): do not edit by hand
\name{export_definition_search}
\alias{export_definition_search}
\title{Exports definition searches to an excel file}
\usage{
export_definition_search(definition_search, out_file)
}
\arguments{
\item{definition_search}{a list of dataframes as produced by build_definition_lists}

\item{out_file}{file path to the excel file to be exported}
}
\description{
Exports definition searches to an excel file
}
\examples{
\dontrun{
medical_table <- read.delim("medical.txt", fileEncoding="latin1", stringsAsFactors = FALSE)
drug_table <- read.delim("product.txt", fileEncoding="latin1", stringsAsFactors = FALSE)
def2 <- import_definition_lists(system.file("extdata", "example_search.csv",
                                            package = "rpcdsearch"))
draft_lists <- definition_search(def2, medical_table, drug_table = drug_table)
out_file <- "def_searches.xlsx"
export_definition_search(draft_lists, out_file)
}
}

