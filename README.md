Student Grades Analysis

AI Assistance Declaration

AI Assistance Declaration: I used ChatGPT for drafting and formatting this README, generating Markdown structure suggestions, and improving documentation clarity. Prompts included requests for a professional README, R Markdown documentation, reflection drafts, and formatting improvements. I reviewed and verified the final content against the uploaded R script before submission. All final verification and repository setup were completed by me.

---

Project Overview

This project analyzes a synthetic student grades dataset using R. The script generates fictional student scores across multiple subjects, summarizes performance by student and by subject, identifies students who may be at risk of failing, and creates a visualization of average subject scores.

The project demonstrates basic data analysis workflows using dplyr for data manipulation and ggplot2 for visualization.

Features

- Generates a synthetic student grades dataset.
- Calculates average, minimum, and maximum scores for each student.
- Calculates average scores for each subject.
- Flags students whose average score is below 60.
- Creates a bar chart showing average scores by subject.
- Prints summary tables and the visualization to the R console.

Technologies Used

- R
- dplyr
- ggplot2

Installation

1. Clone this repository:

git clone https://github.com/yourusername/markdown-buddy-yourname.git

2. Open the project in RStudio or Posit Cloud.

3. Install the required packages if they are not already installed:

install.packages("dplyr")
install.packages("ggplot2")

Usage

Run the script from RStudio or the R console:

source("grades_analysis.R")

The script will:

- Generate the synthetic dataset.
- Create student and subject summaries.
- Identify at-risk students.
- Display a bar chart of average scores by subject.

Project Structure

markdown-buddy-yourname/
├── README.md
├── grades_analysis.R
├── grades_analysis.Rmd
├── Reflection.md
├── AI_Assistance_Declaration.md
└── Appendix_AI_Prompts.md

Example Output

Student Summary

The script produces a table containing:

- Student name
- Average score
- Minimum score
- Maximum score

Subject Summary

A second table shows the average score for each subject:

- Math
- Science
- English

At-Risk Students

Students with an average score below 60 are listed in a separate table.

Visualization

The script generates a bar chart titled Average Score by Subject.

Data Source

The dataset is generated within the R script using synthetic data. No real student or personal information is used.

License

This project is provided for educational purposes as part of the BDA400 Data Science Tools and Techniques assignment.
## AI Assistance Disclosure

**AI Tool Used:** ChatGPT

**Main Prompts Used:**
- Generate a professional README for an R data analysis project.
- Create an R Markdown document to document an R script.
- Review Markdown formatting and improve readability.

**Changes Made After Review:**
- Edited the documentation for accuracy.
- Verified the descriptions against the R script.
- Improved formatting and organization before submission.
