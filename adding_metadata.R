
# Install and load openxlsx, readr, and dplyr packages
if (!requireNamespace("openxlsx", quietly = TRUE)) {
  install.packages("openxlsx")
}
if (!requireNamespace("readr", quietly = TRUE)) {
  install.packages("readr")
}
if (!requireNamespace("dplyr", quietly = TRUE)) {
  install.packages("dplyr")
}
library(openxlsx)
library(readr)
library(dplyr)

# Set the working directory to the folder where the .txt files are
folder_path <- getwd()

# Get the list of all .txt files in the folder
file_list <- list.files(folder_path, pattern = "\\.txt$", full.names = TRUE)

# Create an empty data frame to store the data
df <- data.frame(file_name = character(), text_data = character(), stringsAsFactors = FALSE)

for (file_path in file_list) {
  file_name <- basename(file_path)
  text <- read_file(file_path, locale = locale(encoding = "UTF-8"))
  df <- rbind(df, data.frame(file_name = file_name, text_data = text, stringsAsFactors = FALSE))
}

# write.xlsx(df, "text_data.xlsx", row.names = FALSE)
# change directory to read in the files to be able to merge them with meta data
summary <- read.csv("2022-summaries-list.csv")
data <- read.xlsx("text_data.xlsx")

summary <- summary[!duplicated(summary[c('ApprovingPerson')]), ]


# create a new column without the ".txt" on end
data$company <- gsub("\\.txt$", "", data$file_name)

# left join
matched_data <- left_join(summary, data, by = c("OrganisationName" = "company"))

# remove rows with NA
matched_data <- matched_data %>%
  filter(!is.na(matched_data$text_data))

write.xlsx(matched_data, "data_final.xlsx")

