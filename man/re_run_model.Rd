% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/model_run.R
\name{re_run_model}
\alias{re_run_model}
\title{re_run_model}
\usage{
re_run_model(
  model,
  data = NULL,
  dv = NULL,
  ivs = NULL,
  trans_df = NULL,
  meta_data = NULL,
  id_var = NULL,
  model_table = NULL,
  normalise_by_pool = FALSE,
  verbose = FALSE,
  decompose = TRUE
)
}
\arguments{
\item{model}{the model object used as the starting point of the re-run}

\item{data}{\code{data.frame} containing variables included in the model specification}

\item{dv}{string of the dependent variable name}

\item{ivs}{character vector of the independent variables names}

\item{trans_df}{\code{data.frame} defining the non-linear transformations to apply}

\item{meta_data}{\code{data.frame} mapping variable names to their roles (i.e. POOL)}

\item{id_var}{string of id variable name (e.g. date)}

\item{model_table}{\code{data.frame} as created in the \code{build_model_table} function}

\item{normalise_by_pool}{A boolean to specify whether to apply the normalisation}

\item{verbose}{A boolean to specify whether to print warnings}

\item{decompose}{A boolean to specify whether to generate the model decomposition}
}
\value{
Model object
}
\description{
Re-run a linear regression model
}
\details{
Re-run a linear regression model using the function output of running \code{linea::run_model}.
}
\examples{
model = run_model(
   data = read_xcsv("https://raw.githubusercontent.com/paladinic/data/main/ecomm_data.csv"),
   dv = 'ecommerce',
   ivs = c('christmas','black.friday'))
re_run_model(model,ivs = c('disp','cyl','wt'))
}
