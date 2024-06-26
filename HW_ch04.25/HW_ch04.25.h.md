## This homework is written by 陳怡仁 (312707053)

## ch04.25(h)

## Question:

Based on your work in this problem, discuss the choice of functional form. Which functional form would you use? Explain.

## Answer:

$$ R^2 = 1 - \frac{RSS}{TSS} = 1 - \frac{\sum(y_i - \hat{y}_i)^2}{\sum(y_i - \bar{y})^2} $$

$$ generlized\ R^2 = \left( \text{corr}(y, \hat{y}) \right)^2 $$

$$ \text{MSE} = \frac{1}{n} \sum_{i=1}^{n}(y_i - \hat{y}_i)^2 $$

$$ \text{RMSE} = \sqrt{\text{MSE}} $$

|            |    $R^2$    | generalized $R^2$ |    MSE   |    RMSE    |  jarque's p value  |  residual  |
|:------------:|:-----------:|:------------------:|:----------:|:------------:|:-----------:|:-----------:|
| log-linear | $0.5417259$ |    $0.6621612$ V   | $15264.64$ |  $123.5501$  |  $1.61e-06$  | convergence V|
|  log-log   | $0.4738445$ |    $0.6445084$     | $13190.87$ |  $114.8515$  |  $0.0007933$  V| convergence V|
|   linear   | $0.6413167$ V |    $0.6413167$     | $10525.69$ V |  $102.5948$ V  |  $<2.2e-16$  | divergence |

<img src="https://github.com/HWTeng-Course/202402-Financial-Econometrics/assets/150407283/b0b1db13-8639-48da-84a8-9232d11a7f70" alt="圖片 1" width="250" height="250">
<img src="https://github.com/HWTeng-Course/202402-Financial-Econometrics/assets/150407283/cab6d79a-f514-4d81-b797-a742b8181138" alt="圖片 1" width="250" height="250">
<img src="https://github.com/HWTeng-Course/202402-Financial-Econometrics/assets/150407283/2d0c48a0-f053-48d5-bad0-f6a9c5682158" alt="圖片 1" width="250" height="250">

If you care about the prediction ability, choose the linear model; if you care about the residual distribution, choose non-linear models such as log-linear and log-log, in short, I would choose the linear model.

## Code:
```r
# 對數-線性模型
model_log_linear <- glm(price ~ log(sqft), data = collegetown)
# 使用模型對數據進行預測
pred_log_linear <- predict(model_log_linear)

# 對數-對數模型
model_log_log <- glm(log(price) ~ log(sqft), data = collegetown)
# 使用模型對數據進行預測
pred_log_log <- exp(predict(model_log_log))

# 線性模型
model_linear <- lm(price ~ sqft, data = collegetown)
# 使用模型對數據進行預測
pred_linear <- predict(model_linear)

# 模型1（對數-線性模型）的預測結果
pred_log_linear <- c(pred_log_linear)

# 模型3（對數-對數模型）的預測結果
pred_log_log <- c(pred_log_log)

# 模型3（線性模型）的預測結果
pred_linear <- c(pred_linear)

# 真實值
actual <- c(collegetown$price)

# 計算均方根誤差 (RMSE) 函數
calculate_rmse <- function(pred, actual) {
  rmse <- sqrt(mean((pred - actual)^2))
  return(rmse)
}

# 計算每個模型的 RMSE
rmse_log_linear <- calculate_rmse(pred_log_linear, actual)
rmse_log_log <- calculate_rmse(pred_log_log, actual)
rmse_linear <- calculate_rmse(pred_linear, actual)

# 輸出結果
cat(paste("Log-linear model's RMSE:", rmse_log_linear))
cat('\n')
cat(paste("Log-log model's RMSE:", rmse_log_log))
cat('\n')
cat(paste("Linear model's RMSE:", rmse_linear))

# 計算均方根誤差 (MSE) 函數
calculate_mse <- function(pred, actual) {
  mse <- mean((pred - actual)^2)
  return(mse)
}

# 計算每個模型的 MSE
mse_log_linear <- calculate_mse(pred_log_linear, actual)
mse_log_log <- calculate_mse(pred_log_log, actual)
mse_linear <- calculate_mse(pred_linear, actual)

# 輸出結果
cat(paste("Log-linear model's MSE:", mse_log_linear))
cat('\n')
cat(paste("Log-log model's MSE:", mse_log_log))
cat('\n')
cat(paste("Linear model's MSE:", mse_linear))

```
