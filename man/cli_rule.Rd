% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cli.R
\name{cli_rule}
\alias{cli_rule}
\title{CLI horizontal rule}
\usage{
cli_rule(
  left = "",
  center = "",
  right = "",
  id = NULL,
  .envir = parent.frame()
)
}
\arguments{
\item{left}{Label to show on the left. It interferes with the \code{center}
label, only at most one of them can be present.}

\item{center}{Label to show at the center. It interferes  with the
\code{left} and \code{right} labels.}

\item{right}{Label to show on the right. It interferes with the \code{center}
label, only at most one of them can be present.}

\item{id}{Element id, a string. If \code{NULL}, then a new id is generated
and returned.}

\item{.envir}{Environment to evaluate the glue expressions in.}
}
\description{
It can be used to separate parts of the output.
}
\details{
\subsection{Inline styling and interpolation}{\if{html}{\out{<div class="sourceCode r">}}\preformatted{pkg <- "mypackage"
cli_rule(left = "\{.pkg \{pkg\}\} results")
}\if{html}{\out{</div>}}

\if{html}{\figure{cli-rule.svg}}
}

\subsection{Theming}{

The line style of the rule can be changed via the the \code{line-type}
property. Possible values are:
\itemize{
\item \code{"single"}: (same as \code{1}), a single line,
\item \code{"double"}: (same as \code{2}), a double line,
\item \code{"bar1"}, \code{"bar2"}, \code{"bar3"}, etc., \code{"bar8"} uses varying height bars.
}

Colors and background colors can similarly changed via a theme.\if{html}{\out{<div class="sourceCode r">}}\preformatted{d <- cli_div(theme = list(rule = list(
  color = "cyan",
  "line-type" = "double")))
cli_rule("Summary", right = "\{.pkg mypackage\}")
cli_end(d)
}\if{html}{\out{</div>}}

\if{html}{\figure{cli-rule-line-type.svg}}
}
}
