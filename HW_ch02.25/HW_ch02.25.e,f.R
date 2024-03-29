# This homework is written by 312707001 葉宗翰

#Download the required data and set up variables and linear models.

library(POE5data)
data("cex5_small")

cex5_small$lnfoodaway <- log(cex5_small$foodaway)
cex5_small$lnfoodaway[is.infinite(cex5_small$lnfoodaway)] <- NA
regmod3 <- lm(lnfoodaway~income, data = cex5_small, , na.action = na.exclude)

#2.25 (e)
plot(cex5_small$income, cex5_small$lnfoodaway, xlab = "Income",ylab = "ln(foodaway)",main = "Scatterplot + Fitted Line")
intercept <- coef(regmod3)[1]
slope <- coef(regmod3)[2]
abline(a = intercept, b = slope, col = "red",lwd = 3)

#2.25 (f)
plot(resid(regmod3) ~income, data = cex5_small)
resid(regmod3)
