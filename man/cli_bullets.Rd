% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/bullets.R
\name{cli_bullets}
\alias{cli_bullets}
\title{List of items}
\usage{
cli_bullets(text, id = NULL, class = NULL, .envir = parent.frame())
}
\arguments{
\item{text}{Character vector of items. See details below on how names
are interpreted.}

\item{id}{Optional id of the \code{div.memo} element, can be used in themes.}

\item{class}{Optional additional class(es) for the \code{div.memo} element.}

\item{.envir}{Environment to evaluate the glue expressions in.}
}
\description{
It is often useful to print out a list of items, tasks a function or
package performs, or a list of notes.
}
\details{
Items may be formatted differently, e.g. they can have a prefix symbol.
Formatting is specified by the names of \code{text}, and can be themed.
cli creates a \code{div} element of class \code{memo} for the whole memo. Each
item is another \code{div} element of class \verb{memo-item-<name>}, where
\verb{<name>} is the name of the entry in \code{text}. Entries in \code{text} without
a name create a \code{div} element of class \code{memo-item-empty}, and if the
name is a single space character, the class is \code{memo-item-space}.

The built-in theme defines the following item types:
\itemize{
\item No name: Item without a prefix.
\item \verb{}: Indented item.
\item \code{*}: Item with a bullet.
\item \code{>}: Item with an arrow or pointer.
\item \code{v}: Item with a green "tick" symbol, like \code{\link[=cli_alert_success]{cli_alert_success()}}.
\item \code{x}: Item with a ref cross, like \code{\link[=cli_alert_danger]{cli_alert_danger()}}.
\item \code{!}: Item with a yellow exclamation mark, like \code{\link[=cli_alert_warning]{cli_alert_warning()}}.
\item \code{i}: Info item, like \code{\link[=cli_alert_info]{cli_alert_info()}}.
}

You can define new item type by simply defining theming for the
corresponding \verb{memo-item-<name>} classes.\if{html}{\out{<div class="sourceCode r">}}\preformatted{cli_bullets(c(
        "noindent",
  " " = "indent",
  "*" = "bullet",
  ">" = "arrow",
  "v" = "success",
  "x" = "danger",
  "!" = "warning",
  "i" = "info"
))
}\if{html}{\out{</div>}}

\if{html}{\figure{cli-bullets.svg}}
}
