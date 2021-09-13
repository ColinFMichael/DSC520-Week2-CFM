# Assignment: Assignment 2
# Name: Michael, Colin
# Date: 2021-09-10

getwd()

dir()



person_df1<- read.csv(file = "/Users/colinmichael/Desktop/Data Science/DSC520/person.csv")

person_df1

person_df2<- read.csv(file = "/Users/colinmichael/Desktop/Data Science/DSC520/person.csv")

person_df2<- str(person_df2)
person_df2

scores_df<- read.csv(file = "/Users/colinmichael/Desktop/Data Science/DSC520/scores.csv")

scores_df
summary(scores_df)

library(readxl)


voter_turnout_df1<-read_excel("/Users/colinmichael/Desktop/Data Science/DSC520/G04ResultsDetail2004-11-02.xls", skip = 1)

str(voter_turnout_df1)

#install.packages("DBI")

#install.packages('RSQLite')

library(DBI)
db<- dbConnect(RSQLite::SQLite(), "/Users/colinmichael/Desktop/Data Science/DSC520/example.db")

person_df<- dbGetQuery(db, "SELECT * FROM PERSON")
head(person_df)

table_names<- dbListTables(db)
table_names


tables<-lapply(table_names, dbReadTable, conn = db )
tables

dbDisconnect(db)

library(jsonlite)

scores_df

toJSON(scores_df)

toJSON(scores_df, pretty = TRUE)


