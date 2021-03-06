% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/nn.R
\name{layer_dense}
\alias{layer_dense}
\title{layer_dense}
\usage{
layer_dense(object = NULL, units = NULL, activation = NULL,
  use_bias = FALSE, kernel_l1 = 0, kernel_l2 = 0)
}
\arguments{
\item{object}{Model object}

\item{units}{Number of hidden units}

\item{activation}{Name of activation function, if NULL no activation is applied}

\item{use_bias}{Use bias or not}

\item{kernel_l1}{l1 regularization on the weights}

\item{kernel_l2}{l2 regularization on the weights}
}
\description{
Add a fully connected layer to an output
}
\seealso{
\code{\link{sjSDM}}
}
