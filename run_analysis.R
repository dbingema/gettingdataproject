## Part 1 (and 4)

setwd("getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/")
features <- read.table("features.txt", sep = " ", col.names=c("id", "feature.name"), colClasses=c("integer", "character"))
activities <- read.table("activity_labels.txt", sep = " ", col.names=c("id", "activity.name"), colClasses=c("integer", "character"))

setwd("train")
train.x <- read.table("X_train.txt", colClasses="numeric", col.names=features$feature.name)
train.subj <- readLines("subject_train.txt")
train.labels <- readLines("y_train.txt")

setwd("../test")
test.x <- read.table("X_test.txt", colClasses="numeric", col.names=features$feature.name)
test.subj <- readLines("subject_test.txt")
test.labels <- readLines("y_test.txt")
setwd("../../..")

train <- data.frame(subject = train.subj, activity = train.labels, train.x)
test <- data.frame(subject = test.subj, activity = test.labels, test.x)
combined <- rbind(train, test)


## Part 2

mean.index <- grep("mean", names(combined))
std.index <- grep("std", names(combined))
mean.std.index <- sort(unique(c(mean.index, std.index)))

library(dplyr)
mean.std.table <- select(combined, c(1, 2, mean.std.index))


## Part 3

mean.std.table$activity <- factor(mean.std.table$activity, labels = activities$activity.name)


## Part 4
## already included in Part 1



## Part 5

avg.table <- aggregate(mean.std.table[,-c(1,2)], by = list(subject = mean.std.table$subject, activity = mean.std.table$activity), data = mean.std.table, mean, na.rm = TRUE)
names(avg.table) <- tolower(gsub("\\.","", names(avg.table)))


## Save

write.table(avg.table, "projectResult.txt", row.names=FALSE)

