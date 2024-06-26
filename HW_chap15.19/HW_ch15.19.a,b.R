library(POE5Rdata)
library(dplyr)
library(tidyverse)
library(magrittr)
library(broom.mixed)
library(plm)
library(knitr)
mod1 <- plm(lnprice~age+attractive+school+regular+rich+alcohol+nocondom+bar+street, data = mexican, random.method="swar",model="random")
kable(tidy(mod1), digits= 4, caption = "Ramdom model")
library(lmtest)
test_result <- waldtest(mod1, . ~ . - age - attractive - school, vcov = vcovHC(mod1, type = "HC1"))
confint_nocondom <- confint(mod1, "nocondom", level = 0.95)
print(confint_nocondom)
