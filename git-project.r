# git project
names <- read.csv("baby-names.csv", header = T, stringsAsFactors = F)

# extracting all data related to my name
christine <- subset(names, name == "Christine" & sex == "girl")

# plotting my name's popularity over time
library(ggplot2)
qplot(year, prop, data = christine, geom = "line", main = "Percentage of children named Christine, by year")


# for later
both_names <- rbind(christine, second_name)

qplot(year, prop, data = both_names, geom = "line", colour = name, main = "Popularity of group member names over time")
ggsave("names.pdf", width = 5, height = 4)
