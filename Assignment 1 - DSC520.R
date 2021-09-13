#Assignment 1
#Michael, Colin
#2021-09-09

c(3,2,1)
num_vector<- c(3,2,1)

num_vector

c("three","two","one")
char_vector<- c("three","two","one")
char_vector

c(6.1, 8.8, 7.7, 6.4, 6.2, 6.9, 6.6)
week1_sleep<- c(6.1, 8.8, 7.7, 6.4, 6.2, 6.9, 6.6)
week1_sleep

week1_sleep[2]

week1_sleep_weekdays<- week1_sleep[1:5]

week1_sleep_weekdays

sum(week1_sleep)
total_sleep_week1<- sum(week1_sleep)
total_sleep_week1

week2_sleep<- c(7.1, 7.4, 7.9, 6.5, 8.1, 8.2, 8.9)
week2_sleep

total_sleep_week2<- sum(week2_sleep)
total_sleep_week2

total_sleep_week1 < total_sleep_week2

mean(total_sleep_week1)

days<- c("Sunday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday")
days

names(week1_sleep)<-days[1:7]
names(week2_sleep)<-days[1:7]
week1_sleep
week2_sleep

week1_sleep["Tuesday"]

weekdays<-days[2:6]
weekdays

weekends<- c("Sunday","Saturday")
weekends

weekdays1_mean<- mean(week1_sleep[weekdays])
weekdays1_mean

weekdays2_mean<- mean(week2_sleep[weekdays])
weekdays2_mean

weekdays1_mean > weekdays2_mean

week1_sleep > 8
#######-----

student01<-c(100.0, 87.1)
student02<-c(77.2, 88.9)
student03<-c(66.3, 87.9)


students_combined<-c(student01, student02, student03)
students_combined


grades<-matrix(students_combined, byrow= TRUE, nrow = 3)
grades

student04<-c(95.2, 94.1)
grades<-rbind(grades, student04)
grades


assignment04 <- c(92.1, 84.3, 75.1, 97.8)
grades<- cbind(grades, assignment04)
grades

assignments <- c("Assignment 1", "Assignment 2", "Assignment 3")
students <- c("Florinda Baird", "Jinny Foss", "Lou Purvis", "Nola Maloney")

rownames(grades)<- students
colnames(grades)<-assignments
grades

colSums(grades)
rowSums(grades)

weighted_grades<- grades * 0.1 + grades
weighted_grades

genres_vector <- c("Fantasy", "Sci-Fi", "Sci-Fi", "Mystery", "Sci-Fi", "Fantasy")
factor_genre_vector <- genres_vector
summary(factor_genre_vector)

recommendations_vector <- c("neutral", "no", "no", "neutral", "yes")
factor_recommendations_vector <- factor(
  recommendations_vector,
  ordered = TRUE,
  levels = c("yes", "neutral", "no")
)

summary(factor_recommendations_vector)

head(mtcars)
tail(mtcars)

name <- c("Aragon", "Bilbo", "Frodo", "Galadriel", "Sam", "Gandalf", "Legolas", "Sauron", "Gollum")
race <- c("Men", "Hobbit", "Hobbit", "Elf", "Hobbit", "Maia", "Elf", "Maia", "Hobbit")
in_fellowship <- c(TRUE, FALSE, TRUE, FALSE, TRUE, TRUE, TRUE, FALSE, FALSE)
ring_bearer <- c(FALSE, TRUE, TRUE, FALSE, TRUE, TRUE, FALSE, TRUE, TRUE)
age <- c(88, 129, 51, 7000, 36, 2019, 2931, 7052, 589)

characters_df <- data.frame(name, race, in_fellowship, ring_bearer, age)
characters_df

sorted_characters_df <- characters_df[order(age),]
head(sorted_characters_df)

ringbearers_df <- characters_df[characters_df$ring_bearer == TRUE,]

head(ringbearers_df)






