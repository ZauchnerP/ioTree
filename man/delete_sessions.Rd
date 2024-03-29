% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/delete_sessions.R
\name{delete_sessions}
\alias{delete_sessions}
\title{Delete all cases of one session}
\usage{
delete_sessions(oTree, scodes, saved_vars = NULL, reason, info = FALSE)
}
\arguments{
\item{oTree}{A list of data frames that were created by import_otree().}

\item{scodes}{Character. The session.code(s) of the
sessions whose data should be removed.}

\item{saved_vars}{Character. The name(s) of variable(s) that need(s) to be
stored in the list of information on deleted cases in $info$deleted_cases.}

\item{reason}{Character. The reason for deletion that should be stored in
the list of information on deleted cases in $info$deleted_cases.}

\item{info}{Logical. TRUE if a brief information on the session
deletion process should be printed.}
}
\value{
This function returns a duplicate of the original oTree list of
data frames that do not include the deleted sessions.

It adds information on the deleted cases to $info$deleted_cases. (This
list is also filled by other functions.)

In this list, you can find the following information:

$full and $unique = The data frames $full and $unique contain
information on all participants
whose data were deleted. The entries to the $full and the $unique data
frames in this list are the same. Columns "end_app" and "end_page" are left
empty intentionally because they are only filled by the delete_dropouts()
function. Columns "participant.code" and "reason" are filled.

$codes = A vector containing the participant codes of
all deleted participants.

$count = The number of all deleted participants.
}
\description{
Delete cases from specific sessions in all data frames in the
oTree list of data frames.

Caution 1: This function does not delete the cases from the
original CSV and Excel files!

Caution 2: This function does not delete cases from custom exports if the
custom exports do not have a variable named participant.code and a variable
named session.code!
}
\examples{
# Use package-internal list of oTree data frames
oTree <- ioTree::oTree

# First, show some row numbers
print(paste(nrow(oTree$all_apps_wide), nrow(oTree$survey),
nrow(oTree$Time), nrow(oTree$Chats)))

# Delete one session
oTree2 <- delete_sessions(oTree,
  scodes = "7bfqtokx",
  reason = "Only tests")

# Show row numbers
print(paste(nrow(oTree2$all_apps_wide), nrow(oTree2$survey),
nrow(oTree2$Time), nrow(oTree2$Chats)))

# Delete two sessions
oTree2 <- delete_sessions(oTree,
  scodes = c("7bfqtokx", "vd1h01iv"),
  reason = "Only tests")

# Show row numbers again
print(paste(nrow(oTree2$all_apps_wide), nrow(oTree2$survey),
nrow(oTree2$Time), nrow(oTree2$Chats)))
}
\keyword{oTree}
