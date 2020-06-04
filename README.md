# Unix Dataset Analysis

This is a coursework originally assigned in the COMP1204: Data Management module at the University of Southampton

## Coursework Prompt
You work as a data scientist for TripAdvisor and your job is to help them make sense of what hotels are performing well 
You have been tasked with analysing all the files containing reviews for each hotel as described in the next subsections. 
The dataset to be used for this coursework is the TripAdvisor dataset that can be found under the dataset folder in this repository.

## Learning Outcomes
- Knowledge of Unix commands including but not limited to sed, awk, grep and pipes.
- Knowledge of Latex commands and document preparation.
- Data cleaning techniques using pattern matching and filtering.

## Scripts

### CountReviews.sh
Counts all of the reviews for each hotel and sorts all hotels from the one with the highest number of 
reviews to the one with the lowest.

### AverageReviews.sh
This script returns each hotel name next to the average review score for that hotel, 
in a list that is sorted from the highest ranking hotel to the lowest.

## Report
The Coursework is accompained by a report written in LaTex that goes in depth on all of the inner workings 
of the scripts' algorithms.
It also features further discussions on "Unstructured Markup vs Structured Data" along with the advantages and disadvantages for each.
The report ends by presenting several ideas on how to improve the structure of the reviews dataset so that it can be 
more efficiently accessed in order to get the information required.
