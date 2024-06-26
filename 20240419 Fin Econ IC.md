# 20240219 Fin Econ IC


## Question 1

It has been shown that 

$$var(b_2) = \frac{\sum_{i=1}^N \left[(x_i-\bar{x})^2\sigma_i^2\right]}{\left[\sum_{i=1}^N(x_i-\bar{x})^2\right]^2}.$$

1. How do you estimate $\sigma_i^2$?
   
   For $k=2$:
   $$\sigma_i^2=\frac{N}{N-2}\hat{e_i}^2$$
2. What is the White variance estimator for $var(b_2)$?
$$\widehat{\text{Var}}(b_2)=\frac{N}{N-2}\frac{\sum_{i=1}^N[(x_i-\bar{x})^2\hat{e_i}^2]}{[\sum_{i=1}^N(x_i-\bar{x})^2]^2}$$
PS: page 14

## Question 2



Consider a simple model: $y=\beta_1+\beta_2 x_i + e_i$.

Assume $\sigma_i^2 = \sigma^2 x_i$. 

1. How do you transform the model into a homoskedastic one?
  $$\frac{y_i}{\sqrt{x_i}}=\beta_1(\frac{1}{\sqrt{x_i}})+\beta_2(\frac{x_i}{\sqrt{x_i}})+\frac{e_i}{\sqrt{x_i}}$$ 
2. Show your transformed model in 1 is homoskedastic.
Recode the model:
$$y_i^*=\beta_1x_{i1}^*+\beta_2x_{i2}^*+e_i^*$$, where $y_i^*=\frac{y_i}{\sqrt{x_i}},\ x_{i1}^*=\frac{1}{\sqrt{x_i}},\ x_{i2}=\frac{x_i}{\sqrt{x_i}},\ e_i^*=\frac{e_i}{\sqrt{x_i}}$
In the new transformed model , $e_i^*$ is homoskeastie:
$$var(e_i^*)=var(\frac{e_i}{\sqrt{x_i}})=\frac{1}{x}var(e_i)=\frac{1}{x}\sigma^2x_i=\sigma^2$$
PS: page 18, 19

## Question 3. (No need to work on this problem)


Consider the general multiple regression model:        $$y_i=\beta_1+\beta_2x_{i2}+\cdots+\beta_K x_{iK}+e_i.$$                                  ￼
A general form for the variance function is          $$var(y_i|z_i) =\sigma_i^2= E(e_i^2|z_i)=h(\alpha_1+\alpha_2 z_{i2}+\cdots+\alpha_S z_{iS}),$$            ￼

1. Specify $H_0$ and $H_1$ in the Breusch-Pagan test for heteroskedasticity
2. What is the White test for heteroskedasticity? 


