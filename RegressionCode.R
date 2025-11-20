dev.new()
install.packages("lubridate")
library(lubridate)

options(max.print=1000000)

sleep <- read.table(file = "Cleaned_Sleep_Efficiency.csv", header = TRUE,
                   sep = ",", na.strings = "UNKNOWN")
attach(sleep)

sleep$BeginSleep <- ymd_hms(sleep$Bedtime)
sleep$EndSleep <- ymd_hms(sleep$Wakeup.time)

# Extract hour and minute components
SleepHour <- hour(sleep$BeginSleep)
SleepMinute <- minute(sleep$BeginSleep)
WakeHour <- hour(sleep$EndSleep)
WakeMinute <- minute(sleep$EndSleep)

# Convert time to fractional hours
FractionalSleep <- SleepHour + SleepMinute / 60
FractionalWake <- WakeHour + WakeMinute / 60

GenderBinary <- ifelse(Gender == 'Male', 1, 0)
SmokingBinary <- ifelse(Smoking.status == 'Yes', 1, 0)
DeepSleepBinary <- ifelse(Deep.sleep.percentage > 50, 1, 0)

x1 <- REM.sleep.percentage
x2 <- Deep.sleep.percentage
x2bin <- DeepSleepBinary
x3 <- Caffeine.consumption
x4 <- Alcohol.consumption
x5 <- Exercise.frequency
x6 <- Age
x7 <- Awakenings
y <- Sleep.efficiency

sleep_model <- lm(y~x1+x2+x2bin+x3+x4+x5+x6+x7)
summary(sleep_model)
anova(sleep_model)

coefficients <- sleep_model$coefficients

print(coefficients)

res <- residuals(sleep_model)
yhat <- 0.3721699 + 0.0049637*x1 + 0.0057975*x2 + 0.0001638*x3 - 0.0067295*x4 
        + 0.0071110*x5 + 0.0009338*x6 - 0.0308622*x7

data <- cbind(res,yhat,y,x1,x2,x3,x4,x5,x6,x7)
data <- as.data.frame(data, stringsAsFactors = FALSE)

# Ordered list of stuff
ordered_indices <- order(data$yhat)
ordered_data <- data[ordered_indices, ]

# Print ordered data
print(ordered_data)

pdf(file = "Diagnostic_Plots.pdf", width = 8)
par(mfrow = c(2,2))
plot(sleep_model)
dev.off()

plot(sleep_model, which=5)

inf <- influence(sleep_model)
hii <- inf$hat
leverage_cutoff <- 16/386


for (i in 1:386) {
  if (hii[i] > leverage_cutoff) {
    print(hii[i])}}

cooked <- cooks.distance(sleep_model)
cooked[69]
cooked[83]
cooked[99]
cooked[137]
cooked[220]
cooked[326]

for (i in 1:386) {
  if (abs(cooked[i]) > 0.3) {
    print(cooked[i])}}

pdf(file = "Matrix_Plot__Variable_Relationships.pdf", width = 8)
pairs(cbind(y,x1,x2,x3,x4,x5,x6,x7))
dev.off()