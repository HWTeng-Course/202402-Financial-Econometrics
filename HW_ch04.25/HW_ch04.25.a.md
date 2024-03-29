# HW_4.25.a

## This homework is written by 張禕紘 (312707043)

## ch04.25(a)

### **Question**

Estimate the log-linear model $ln(PRICE)= \beta_1 + \beta_2SQFT + e$. Interpret the estimated model parameters. Calculate the slope and elasticity at the sample means, if necessary.

### answer:

In this model, two parameters are estimated.

The explanation of the two variables is as follows.

![螢幕擷取畫面 2024-03-28 141602](https://github.com/HWTeng-Course/202402-Financial-Econometrics/assets/161785685/d871a6a3-bf78-4368-a77c-de249eba6c78)


 $\beta_1$=4.393866 ,  $\beta_2$=0.036044   $\bar{PRICE}$=250.2369   $\bar{SQFT}$=27.28212 

When $SQFT$= 0, value $ln(PRICE)$ is 4.393866. It means that if $SQFT$= 0,  $ln(PRICE)$ has a basic value 4.393866.

When $SQFT$ increase 1, $PRICE$ will increase 0.036044  percent.

At sample mean, slope = 9.01966111089965 elasticity = 0.983370065673358


## code

``` r
rm(list=ls())
install.packages("devtools") #install PoEdata packages
library(devtools) #devtools include install_github
install_github("ccolonescu/POE5Rdata")
library(POE5Rdata)
install.packages("ggplot2")
library(ggplot2)
head(collegetown)
ln_price <- log(collegetown$price)  
ln_sqft <- log(collegetown$sqft)

#4.25
#(a)
D <- data.frame(ln_price,ln_sqft,collegetown)
model1 <- lm(ln_price~sqft,data = D)
summary(model1)
x_mean <- mean(D$sqft)
y_mean <- mean(D$price)
slope <- coef(model1)[2] * y_mean
elas <- slope*x_mean/y_mean
print(paste("at the sample means, slope =", slope, "elasticity =", elas))
