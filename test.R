
data2 <- data[c("date", "steps")]
data2$date <- factor(data2$date)
data3 <- split(data2, data2$date)
print(lapply(data3, x <- function(k){mean(k$steps)}))
#Median of total steps taken each day
print(lapply(data3, x <- function(k){median(k$steps)}))