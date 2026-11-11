# grades_analysis.R
# Purpose: Analyze a synthetic student grades dataset to summarize
#          performance by student and by subject, and flag students
#          who are at risk of failing.

# ---- 1. Load libraries ----
library(dplyr)
library(ggplot2)

# ---- 2. Create synthetic dataset ----
# (No real student data is used - all names and scores are fictional.)
set.seed(42)

students <- c("Ava", "Ben", "Carlos", "Dana", "Elijah", "Fatima",
              "Grace", "Hiro", "Isla", "Jamal")

subjects <- c("Math", "Science", "English")

grades <- expand.grid(student = students, subject = subjects) %>%
  mutate(score = round(rnorm(n(), mean = 75, sd = 12)),
         score = pmin(pmax(score, 0), 100)) # clamp between 0-100

# ---- 3. Summarize by student ----
student_summary <- grades %>%
  group_by(student) %>%
  summarise(average_score = round(mean(score), 1),
            min_score = min(score),
            max_score = max(score)) %>%
  arrange(desc(average_score))

# ---- 4. Summarize by subject ----
subject_summary <- grades %>%
  group_by(subject) %>%
  summarise(average_score = round(mean(score), 1))

# ---- 5. Flag at-risk students (average below 60) ----
at_risk <- student_summary %>%
  filter(average_score < 60)

# ---- 6. Visualize average score by subject ----
subject_plot <- ggplot(subject_summary, aes(x = subject, y = average_score, fill = subject)) +
  geom_col() +
  labs(title = "Average Score by Subject",
       x = "Subject", y = "Average Score") +
  theme_minimal()

# ---- 7. Print results ----
print(student_summary)
print(subject_summary)
print(at_risk)
print(subject_plot)
