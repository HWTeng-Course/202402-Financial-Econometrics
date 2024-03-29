This homework is written by 莊巧筠 (312707030)

Q:

c.Using the quadratic regression model in part (a), estimate the expected price $E(PRICE|SQFT) =  α_1+ α_2×SQFT^2$  for a house of 2000 square feet. Construct a 95% interval estimate of the expected price. Describe your interval estimate to a general audience.

code:
```{r}
#CH3-23 (c)
exp_price <- alpha1 + alpha2*sqft^2
sqft <- 20
alpha <- 0.05
tc <- qt(1-alpha/2,df)
alpha1 <- model$coef[1]
alpha2 <- model$coef[2]
vara1 <- vcov(model)[1, 1]
vara2 <- vcov(model)[2, 2]
cova1a2 <- vcov(model)[1, 2]
varL = vara1 + (sqft^2)^2*vara2 + 2*sqft^2*cova1a2 # var(L)
seL <- sqrt(varL)

# Interval estimate
lowb <- exp_price-tc*seL
upb <- exp_price+tc*seL
interval<-c(lowb,upb)
interval
```
<img width="169" alt="image" src="https://github.com/HWTeng-Course/202402-Financial-Econometrics/assets/161672454/c5f28a46-0339-45b3-a03e-a0cade472889">

<img width="233" alt="image" src="https://github.com/HWTeng-Course/202402-Financial-Econometrics/assets/161672454/dbf4481e-da60-4095-879e-9c7ebc040e41">



$E(PRICE|SQFT) =  α_1+ α_2×SQFT^2$

100(1-α)% interval estimate for $(c_1 β_1+c_2 β_2) is (c_1 b_1+c_2 b_2)±t_c se(c_1 b_1+c_2 b_2)$

The expected price is $\hat{( E)} ̂(PRICE|SQFT=20) =93.5659+0.1845*20^2  = 167.3735$

 The standard error is  

$\sqrt{{var}(\hat{α_1 })+ 400*(\hat{α_2})}=\sqrt{{var}(\hat{α_1 })+ 400^2*(\hat{α_2})+2(400)cov((\hat{α_1}) ̂,(\hat{α_2}))}=4.746378$.\
 $t_{(0.975,498)}$= 1.964739

The resulting interval estimate is 167.3735  ± (1.964739 )  4.746378 = [158.0481, 176.6988]

In repeated sampling, we estimate with 95% confidence that the average price of a 2000 square 
foot house is between $158,048.10 and $176,698.80.

[Teng: How do you interpret to the general audience?]

**[Reviewed by Yenting 20240327.]** 
