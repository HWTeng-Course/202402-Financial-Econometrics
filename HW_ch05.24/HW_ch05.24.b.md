## This homework is written by 游政諺 (311707012)
## ch05.24 (b)
Q: Write down expressions for the marginal effects ∂E(PRICE|X)/∂SQFT and
∂E(PRICE|X)/∂AGE. Interpret each of the coefficients. Given the categorical nature of the
variable AGE, what assumptions are being made?

$PRICE = \beta_1 + \beta_2 SQFT + \beta_3 (SQFT * AGE)+e$

expressions for the marginal effects:

$\frac{\delta Y_i}{\delta SQFT} = b_2 + 2b_3 *AGE$\
$\frac{\delta Y_i}{\delta AGE} = b_3 *AGE$
```
price <- collegetown$price
sqft <- collegetown$sqft
age <- price*sqft

linear_model <- lm(price~sqft+age)
sum_linear <- summary(linear_model)
sum_linear

```