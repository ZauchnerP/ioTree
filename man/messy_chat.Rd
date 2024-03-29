% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/messy_chat.R
\name{messy_chat}
\alias{messy_chat}
\title{Check if the Chats data frame is messy}
\usage{
messy_chat(
  oTree,
  combine = FALSE,
  session = TRUE,
  participant = TRUE,
  info = FALSE
)
}
\arguments{
\item{oTree}{A list of data frames that were created by import_otree().}

\item{combine}{Logical. TRUE if all variables referring to
the session code should be merged and/or all variables referring
to participant code should be merged in case data of several versions
of oTree are used.}

\item{session}{Logical. TRUE if all variables referring to the session code
should be checked and merged. Merging only works if combine = TRUE.}

\item{participant}{Logical. TRUE if all variables referring to the
participant code should be checked and merged. Merging only works if
combine = TRUE.}

\item{info}{Logical. TRUE if a brief information on the process should
be printed.}
}
\value{
This function returns an oTree list of data frames that is
an exact copy of the original oTree list of data frames but - if the user
wishes to do so - combines the participant code and session code
variables in the Chats data frame if several variables are referring to
those because of the
combination of different oTree versions. The final variables are called
participant_code and session_code.

If combine = FALSE, the function only checks for the existence of several
variables referring to the participant code and session code and throws an
error if yes.
}
\description{
Check if the Chats data frame includes both
session-related variables and participant-related variables that
appear multiple times. This may occur when data from different
oTree versions, which use different variable names, are combined.

If desired, the function can merge these variables,
storing the data using the newer oTree version's variable names
and removing the outdated variables.
}
\examples{
\dontshow{if (rlang::is_installed("withr")) (if (getRversion() >= "3.4") withAutoprint else force)(\{ # examplesIf}
# Set data folder first
withr::with_dir(system.file("extdata", package = "ioTree"), {

# Import all oTree files in this folder and its subfolders
oTree <- import_otree()
})

# Show all Chats column names
print(colnames(oTree$Chats))

# Run function
oTree <- messy_chat(oTree, combine = TRUE)

# Show all Chats column names again
print(colnames(oTree$Chats))
\dontshow{\}) # examplesIf}
}
\keyword{oTree}
