library(dplyr)

titanic4$embarked[is.na(titanic4$embarked) == TRUE] <- "S"

titanic4$age[is.na(titanic4$age) == TRUE] <- mean(titanic4$age, na.rm = TRUE)

titanic4$boat[is.na(titanic4$boat) == TRUE] <- "None"

has_cabin_number2 <- titanic4 %>% select(cabin)
has_cabin_number2[is.na(has_cabin_number2) == FALSE] <- 1
has_cabin_number2[is.na(has_cabin_number2) == TRUE] <- 0

titanic4 %>% mutate(has_cabin_number2) #Branko, this code line did not work
View(titanic4)

write.csv(titanic4, file = "Titanic_cleaned_3", row.names=FALSE, col.names=FALSE, sep=",")
