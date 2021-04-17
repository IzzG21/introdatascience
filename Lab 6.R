install.packages("memisc")
library(memisc)

x <- data.set(HairEyeColor)
typeof(x)
x
codebook(x)
summary(x)

sapply(HairEyeColor, class)
sapply(HairEyeColor, min)
sapply(HairEyeColor, max)
sapply(HairEyeColor, range)
summary(HairEyeColor)