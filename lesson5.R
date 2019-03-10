getwd()
setwd('/home/santi/Desktop/eda-course-materials/lesson3')
list.files()
pf <- read.csv('pseudo_facebook.tsv', sep = '\t')
names(pf)
setwd('/home/santi/Desktop/eda-course-materials/lesson5')
getwd()
library(ggplot2)
ggplot(aes(x = gender, y = age), data = subset(pf, !is.na(gender))) + geom_histogram(stat="identity")

pf.fc_by_age_gender <- pf %>%
  group_by(age, gender) %>%
  
  
clarity_groups <- group_by(diamonds, clarity)
diamondsByClarity <- summarise(clarity_groups,
                               mean_price = mean(price),
                               median_price = median(price),
                               min_price = min(price),
                               max_price = max(price),
                               n = n())
diamondsByClarity <- arrange(diamondsByClarity, clarity)
head(diamondsByClarity)
library(dplyr)
pf_groups <- group_by(pf, age, gender)
pf.fc_by_age_gender <- summarise(pf_groups,
                                 mean_friend_count = mean(friend_count),
                                 median_friend_count = median(friend_count),
                                 n =n ())
head(pf.fc_by_age_gender)
                                 
