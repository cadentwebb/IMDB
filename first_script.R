##All my code to analyze the imdb database

library(tidyverse)
library(ggplot2)

imdb <- IMDBTrain
imdb.test <- IMDBTrain


##EDA

##Scatterplot
ggplot(data= imdb, mapping = aes(x=budget, y=imdb_score)) + geom_point()

imdb %>%
  filter(budget > 100000000, country == "USA") %>% 
  select(movie_title)
###Budget is in local currency, convert

summary(imdb)

##Scatterplot of gross vs IMDB score
ggplot(data= imdb, mapping = aes(x=gross, y=imdb_score)) + geom_point()

with(imdb, cor(gross, imdb_score, use="complete.obs"))

#Use regression imputation

##Work on columns 9-12