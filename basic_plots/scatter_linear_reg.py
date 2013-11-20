# Sebastian Raschka 11/19/2013
# Minimal R script to create a scatterplot from a data table
# and add an linear regression line.
pdf("plot.pdf")
data <- read.table("mydata.csv", sep="\t", header=TRUE, comment.char="#")
plot(data$var1, data$var2, main="1COM full protein structure")
res <- lm(data$var2 ~ data$var1)   # note order of var2 and var1
abline(res)
dev.off()
