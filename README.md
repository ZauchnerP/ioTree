# ioTree – Import oTree files
  <!-- badges: start -->
  [![R-CMD-check](https://github.com/ZauchnerP/ioTree/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/ZauchnerP/ioTree/actions/workflows/R-CMD-check.yaml)
  <!-- badges: end -->

Handling data from online experiments made with oTree (https://www.otree.org/) can be challenging, especially when dealing with complex experimental designs that span multiple sessions and return numerous files that must be combined. This is where the ioTree package comes in. ioTree is not an official package of the oTree team but is built to complement the oTree open-source platform. It helps streamline the data processing workflow by providing tools designed to import, merge, and manage data from oTree experiments.

## About this version
This is the beta version of the ioTree package!

This package has been thoroughly tested, but since it is still in beta,
it's recommended to double-check the results when importing data. For example:
Verify if the number of cases matches the numbers reported by the lab
and ensure that the time results are reasonable. Please let me know if you
encounter any errors or have suggestions for improvement.

The final package might differ from this package, so please
keep track of the changes.

# Installation

To install this package, use the following command:

`devtools::install_github("ZauchnerP/ioTree")`

# List of all functions
See the page <a href="https://zauchnerp.github.io/ioTree/articles/intro_to_ioTree.html">Introduction to ioTree</a> for a
more detailed overview of the functions. Or see the <a href="https://zauchnerp.github.io/ioTree">website of ioTree</a> for more information on the package in general.

## Importing data

### import_otree()

Imports your oTree data and combines them in a list of data frames.

## Cleaning up data

### messy_chat()

Checks for a messy Chats data frame and combines variables that refer to
the same concept.

### messy_chat()

Checks for a messy Time data frame and combines variables that refer to
the same concept.

### delete_duplicate()

Deletes duplicate rows from all data frames in
the oTree list.

## Dealing with dropouts and deleting cases

### show_dropouts()

Shows participant codes of people who did not finish at (a) certain
app(s) or page(s).

### delete_dropouts()

Deletes participants who did not finish at (a) certain app(s) or
page(s). This function deletes the participants from all data frames in
the oTree list. Caution: It does not delete the cases from the original
CSV and Excel files!

### delete_cases()

Deletes cases from all data frames in the oTree list. Caution: This
function does not delete the cases from the original CSV and Excel
files!

### delete_sessions()
Deletes sessions from all data frames in the oTree list. Caution: This
function does not delete the cases from the original CSV and Excel
files!


## Deleting sensitive information

### delete_plabels()

Deletes the variable `participant.label` from every app because it might
contain identifiable information on the participants, such as their
MTurk ID. Caution: This function does not delete the variable from the
original CSV and Excel files!

## Making IDs

### make_ids()

Makes participant, group, and session IDs that are the same across all
apps.

## Calculating the time

### apptime()

Calculates the time spent on a specific app.

### extime()

Calculates the time spent on the experiment.

### pagesec()

Calculates the time spent on each page.

# Transferring variables between the apps

### assignv()

Copies a variable from the all_apps_wide data frame to the data frames
of all other apps.

### assignv_to_aaw()

Copies a variable from one of your data frames to the all_apps_wide data
frame.

# Before running the experiment

### show_constant()

Shows constant variables.
