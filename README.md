# README

## Show OLS is unbiased when $cov(e,x)=0$. 

312707036 黃子騏 

在SLR的架構下， 

$$\beta_1 = \frac{\sum (X_{i}-\overline{X})(Y_{i}-\overline{Y})}{\sum (X_{i}-\overline{X})^{2}}= \frac{\sum (X_{i}-\overline{X})(\beta_{0} + \beta_{1}X_{i} + \epsilon_{i} - \overline{Y})}{\sum (X_{i}-\overline{X})^{2}} = \beta_1\frac{\sum (X_{i}-\overline{X})X_{i}}{\sum (X_{i}-\overline{X})^{2}} + \frac{\sum (X_{i}-\overline{X}) \epsilon_{i}}{\sum (X_{i}-\overline{X})^{2}}
$$

$$= \beta_1\frac{\sum (X_{i}-\overline{X})^{2}}{\sum (X_{i}-\overline{X})^{2}} + \frac{\sum (X_{i}-\overline{X})(\epsilon_{i} - \overline{\epsilon})}{\sum (X_{i}-\overline{X})^{2}}=\beta_1 + \frac{\sum (X_{i}-\overline{X})(\epsilon_{i} - \overline{\epsilon})}{N-1} \Bigg/ \frac{\sum (X_{i}-\overline{X})^{2}}{N-1}=\beta_1 + \frac{\text{Cov}(X_i, \epsilon_i)}{E[(X_i - \overline{X})^2]}=\beta_1 $$

$$故\beta_1為不偏估計式。$$

## Homework: 20240521

<img width="378" alt="image" src="https://github.com/HWTeng-Course/202402-Financial-Econometrics/assets/55239313/3c08956a-c3d0-46c3-8d6c-524d66e209da">

 

## Homework 7: 20240502


Here's your table reformatted:

| Cohort   | Name     | Question                  | Note |
|----------|----------|---------------------------|------|
| 財金碩1 | 陳家祺    | Demo using python: sample mean converges to population |      |
| 財金碩1 | 黃鈺婷    | ch10.14.(a,b)              |      |
| 財金碩1 | 李宇量    | ch10.14(c,d,e)             |      |
| 財金碩1 | 鄭今惠    | ch10.18(a,b)               |      |
| 財金碩1 | 許雯娟    | ch10.18(c,d)               |      |
| 財金碩1 | 韓淨貽    | ch10.18(e,f,g)             |      |
| 財金碩1 | 許淨喻    | ch10.20(a,b)               |      |
| 財金碩1 | 邱澤宇    | ch10.20(c,d)               |      |
| 財金碩1 | 王柏皓    | ch10.20(e,f)               |      |
| 財金碩1 | 林震洋    | ch10.20(g,h)               |      |


## Homework 6: 20240419


| Cohort | Name | Question       | Note |
|--------|------|----------------|------|
| 財金碩1 | 孫知岱 | ch08.6.(a,b,c)  |    Absent  |
| 財金碩1 | 施昱全 | ch08.6.(d)      |      |
| 財金碩1 | 歐陽君欣 | ch08.6.(e,f)    |      |
| 財金碩1 | 吳亭儀 | ch08.16(a,b,c) |      |
| 財金碩1 | 張祐慈 | ch08.16(d,e)   |      |
| 財金碩1 | 黃馨霈 | ch08.28(a,b,c) |      |
| 財金碩1 | 葉宗翰 | ch08.28(d,e)   |      |



## Homework 5: 20240329

| Cohort   | Name     | Question      | done|
|---------|--------|---------------------------------------------------------------------------------------------------|---|
| 財金碩1  | 張家維 | Special Question: Show that when K=2, b has the same formula as b1 and b2 in Chapter 2.                  |Absent|
| 財金博1  | 阮春順 | Special Question: Show that when K=2, b has the same sampling distribution as b1 and b2 in Chapter 2. | Done. Answer is wrong. |
| 財金專1  | 林書帆 | ch05.06(a,b,c)                                                                                   | Absent
| 財金碩3  | 曾川   | ch05.21(a,b,c)                                                                                   |
| 財金碩2  | 汪文豪 | ch05.21(d,e)                                                                                     |
| 財金碩2  | 游政諺 | ch05.24(a,b,c)                                                                                   |
| 財金碩1  | 丁振朝 | ch05.24(d,e)                                                                                     | Absent




## Homeowrk 4: 20240322


| Cohort   | Name     | Question      |
|----------|----------|---------------|
| 財金碩1  | 張滕淇   | ch04.3(a,b)   |
| 財金碩1  | 林筱慈   | ch04.3(c,d,e) |
| 財金碩1  | 張禕紘 | ch04.25(a)    |
| 財金碩1  | 吳日為   | ch04.25(b)    |
| 財金碩1  | 張永濬   | ch04.25(c)    |
| 財金碩1  | 張家榮   | ch04.25(d)    |
| 財金碩1  | 梁宏宇   | ch04.25(e)    |
| 財金碩1  | 趙悅豪   | ch04.25(f)    |
| 財金碩1  | 賴岳錡   | ch04.25(g)    |
| 財金碩1  | 陳怡仁   | ch04.25(h)    |
| 財金碩1  | 吳柏賢   | ch04.28(a)    |
| 財金碩1  | 許誌榮   | ch04.28(b)    |
| 財金碩1  | 吳悅寧   | ch04.28(c)    |
| 財金碩1  | 曾昱樵   | ch04.28(d)    |



## Homework 3: 20240315


| Cohort  | Name  | Question   |
|---------|-------|------------|
| 財金碩1 | 許淨喻 | ch03.18(a) |
| 財金碩1 | 邱澤宇 | ch03.18(b) |
| 財金碩1 | 王柏皓 | ch03.18(c) |
| 財金碩1 | 林震洋 | ch03.18(d) |
| 財金碩1 | 陳泰清 | ch03.18(e) |
| 財金碩1 | 許桂萍 | ch03.23(a) |
| 財金碩1 | 鄭宇翔 | ch03.23(b) |
| 財金碩1 | 莊巧筠 | ch03.23(c) |
| 財金碩1 | 鄧筠潔 | ch03.23(d) |
| 財金碩1 | 陳品妤 | ch03.31(a) |
| 財金碩1 | 包坤達 | ch03.31(b) |
| 財金碩1 | 李昀庭 | ch03.31(c) |
| 財金碩1 | 黃子騏 | ch03.31(d) |
| 財金碩1 | 廖軒霈 | ch03.31(e) |
| 財金碩1 | 吳翔詠 | ch03.31(f) |


## Homework 2: 20240308 


| Cohort | Name     | Question   |
|---------|----------|-------------|
| 財金碩1 | 施昱全   | ch02.11(a,b)|
| 財金碩1 | 歐陽君欣 | ch02.11(c,d)|
| 財金碩1 | 吳亭儀   | ch02.11(e,f)|
| 財金碩1 | 張祐慈   | ch02.25(a,b)|
| 財金碩1 | 黃馨霈   | ch02.25(c,d)|
| 財金碩1 | 葉宗翰   | ch02.25(e,f)|
| 財金碩1 | 陳家祺   | ch02.28(a,b)|
| 財金碩1 | 黃鈺婷   | ch02.28(c,d)|
| 財金碩1 | 李宇量   | ch02.28(e,f)|
| 財金碩1 | 鄭今惠   | ch02.29(a,b)|
| 財金碩1 | 許雯娟   | ch02.29(c,d)|
| 財金碩1 | 韓淨貽   | ch02.29(e,f)|


## Homework 1: 20240301

| cohort | Name | Question     |
|--------|------|-------------|
| 財金碩3  | 曾川  | ch02.01(a,b) |
| 財金碩2  | 汪文豪 |ch02.01(c,d) |
| 財金碩2  | 游政諺| ch02.01(e,f) |
| 財金碩1 | 丁振朝| ch02.01(g,h)   |
| 財金碩1 | 孫知岱 | ch02.01(i,j)  |





<img title="a title" alt="Alt text" src="./20230427_NYCU logo.png">
