filename <- "household_power_consumption.txt"
data <- read.table(filename,
                   header = TRUE,
                   sep = ";",
                   colClasses = c("character", "character", rep("numeric", 7)),
                   na = "?"
                   )
dim(data)
attach(data)
subset1st2ndFeb <- Date == "1/2/2007"| Date == "2/2/2007"
refinedData <- data[subset1st2ndFeb, ]
attach(refinedData)
x <- paste(Date, Time)
refinedData$DateTime <- strptime(x, "%d/%m/%Y %H:%M:%S")
rownames(refinedData) <- 1:nrow(refinedData)
dim(refinedData)
attach(refinedData)