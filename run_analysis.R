##Below code download Human Activity Recognition(HAR) Dataset in current working directory and unzip##

library(downloader)  # download
URL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
zip.filename <- "getdata_projectfiles_UCI HAR Dataset.zip"

download(URL, zip.filename, mode="wb")      # Download from coursera site

extracted.filename <- unzip(zip.filename)   # Extract file from ZIP

##Create data frames for test , train,subject,activity and features data set
xtestdf <- read.table("./UCI HAR Dataset/test/X_test.txt", header = FALSE, sep = "", quote = "\"'",dec = ".")
ytestdf <- read.table("./UCI HAR Dataset/test/y_test.txt", header = FALSE, sep = "", quote = "\"'")
subjecttestdf <- read.table("./UCI HAR Dataset/test/subject_test.txt", header = FALSE, sep = "", quote = "\"'")

xtraindf <- read.table("./UCI HAR Dataset/train/X_train.txt", header = FALSE, sep = "", quote = "\"'",dec = ".")
ytraindf <- read.table("./UCI HAR Dataset/train/y_train.txt", header = FALSE, sep = "", quote = "\"'")
subjecttraindf <- read.table("./UCI HAR Dataset/train/subject_train.txt", header = FALSE, sep = "", quote = "\"'")


featuresdf <- read.table("./UCI HAR Dataset/features.txt", header = FALSE, sep = "", colClasses = "character")

activitydf <- read.table("./UCI HAR Dataset/activity_labels.txt", header = FALSE, sep = "", colClasses = "character")
names(activitydf) <- c("ActivityId","ActivityName")

## Combine raw test and train data and filter for mean and standard deviation columns 
## Instructions step 1 & 2

rawdf <- rbind(xtestdf,xtraindf)

for(i in 1:ncol(rawdf)) { names(rawdf)[i] <- featuresdf$V2[i]}

namefilter <- grep("mean\\(\\)|std\\(\\)",names(rawdf))

subset_df <- rawdf[,namefilter]

## Combine subject and activity label data and rename the variables properly by removing ()
## Instructions step 3 & 4

subjectdf <- rbind(subjecttestdf,subjecttraindf)

names(subjectdf) <- c("SubjectId")

labeldf <- rbind(ytestdf,ytraindf)

names(labeldf) <- c("ActivityId")

fulldf <- cbind(subjectdf,labeldf,subset_df)

merged_df <- merge(activitydf,fulldf,by.activitydf = "ActivityId" , by.fulldf = "ActivityId" , sort = "TRUE")

names(merged_df) <- gsub("mean\\(\\)","mean",names(merged_df))
names(merged_df) <- gsub("std\\(\\)","std",names(merged_df))

##Created Final Tidy Data Set (tidy_data_set.txt file in current working directory)
## Average of all mean/sd columns for each ActivityName and Subject ID (Instruction step 5) 

averagedf <- aggregate(merged_df[,-(1:3)],list(ActivityName = merged_df$ActivityName,SubjectId = merged_df$SubjectId),FUN = mean)

names(averagedf) <- c("ActivityName","SubjectId",paste0("Average-",names(averagedf)[-(1:2)]))

write.table(averagedf, file = "./tidy_data_set.txt", append = FALSE, quote = FALSE, sep = " ", eol = "\n", na = "NA", dec = ".",col.names = TRUE,row.names = FALSE)