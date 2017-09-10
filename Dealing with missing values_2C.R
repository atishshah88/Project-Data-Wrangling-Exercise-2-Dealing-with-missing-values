library(dplyr)

# 1: Port of embarkation
titanic4$embarked[is.na(titanic4$embarked) == TRUE] <- "S"

# 2: Age
titanic4$age[is.na(titanic4$age) == TRUE] <- mean(titanic4$age, na.rm = TRUE)

# 3: Lifeboat
titanic4$boat[is.na(titanic4$boat) == TRUE] <- "None"

# 4: Cabin
has_cabin_number_2 <- titanic4$cabin
(has_cabin_number_2)
has_cabin_number_2[is.na(has_cabin_number2) == FALSE] <- 1
has_cabin_number_2[is.na(has_cabin_number2) == TRUE] <- 0

titanic4 <- titanic4 %>% mutate(has_cabin_number_2)
View(titanic4)

write.csv(titanic4, file = "Titanic_cleaned_3", row.names=FALSE, col.names=FALSE, sep=",")