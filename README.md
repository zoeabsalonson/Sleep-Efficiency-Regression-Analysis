# Sleep-Efficiency-Regression-Analysis
Sleep Efficiency Statistical Study: A Multiple Linear Regression Analysis

Background: Sleep is a fundamental aspect of human life, critical for maintaining 
health and functionality. This research aims to provide valuable insights into 
how various lifestyle and biological factors contribute to sleep quality, 
offering potential pathways for improving overall sleep health.

Goal:
* The scientific question to answer is if certain factors can help predict a
  person's “sleep efficiency” (the proportion of the time they spend in bed actually sleeping)
* Investigate factors that influence sleep efficiency, which we defined as
  the proportion of time spent in bed fully asleep.
* Using data from the Sleep Efficiency Dataset by Melike Dilekci, which includes
  responses from 386 individuals, examine the impact of seven factors:
    - Percentage of time in REM sleep
    - Percentage of time in deep sleep
    - Caffeine consumption
    - Alcohol consumption
    - Physical activity
    - Age
    - Number of awakenings
* Run a multiple linear regression using the above factors as predictors in an appropriate model,
  with predictor variables representing different sleep factors mentioned above.

Tools/Methodology:
* Data collected from a public survey dataset, Sleep Efficiency Dataset (Dilekci, 2023), from Melike Dilekci.
* Compiled data from the dataset from survey participants who fully answered every survey prompt, which came out to $n = 386$ individuals.
* Dataset consisted of seven predictor variables (independent, $x_{i_k}$) and one response variable (dependent, $y$), sleep efficiency.
    - $x_1$: Percentage (%) of total sleep time spent in REM sleep 
    - $x_2$: Percentage (%) of total sleep time spent in deep sleep 
    - $x_3$: Caffeine consumed (milligrams) in the 24 hours prior to bedtime 
    - $x_4$: Alcohol consumed (ounces) in the 24 hours prior to bedtime 
    - $x_5$: Level of physical activity, measured by the number of times the individual exercised per week (1-5)
    - $x_6$: Age in years of the individual
    - $x_7$: The number of times the individual woke up during the night
* We used a standard multiple regression model to fit a “line” of the form:
  $Y_i = \beta_0 + \beta_1x_{i_1} + \beta_2x_{i_2} + \beta_3x_{i_3} + \beta_4x_{i_4} + \beta_5x_{i_5} + \beta_6x_{i_6} + \beta_7x_{i_7}$,
  where $Y_i$ is the predicted sleep efficiency for
  individual number $i$ $(i = 1, 2, …, 386)$ and $x_{i_j}$ is the value of the predictor
  variable $x_k$ $(k = 1, 2, …, 7)$ for individual $i$ $(i= 1, 2, …, 386)$.
* Regression analysis done in R programming software
* Analyzed ANOVA table, residual plots, and Cook's distance diagnostic plot
  
Key Findings:
<br/>
<img width="632" height="203" alt="image" src="https://github.com/user-attachments/assets/aed5122a-e9ea-4cc7-8e63-70cd657271d8" />
*  The F-test gives us a p-value of approximately 0, which is less than a significance level of 0.05 so there is sufficient evidence to conclude that one or more of our predictors have non-zero coefficients, so our model is statistically significant.
*  The regression model showed that 77.86% ($r^2$ value of 0.7786) of the variability in sleep efficiency could be explained by the studied predictors 
<br/>
<img width="548" height="429" alt="image" src="https://github.com/user-attachments/assets/d6d60187-429d-422a-b17e-6b4e856b3746" />
<br/>
Strong relationship between the predictors and the response variable, verified in the diagnostic plots, having no issues with linearity, heteroscedasticity, distribution of error terms, or influential points substantially affecting the regression. Q-Q plot indicated that the residuals came from a normal distribution with a mean of 0 and a variance of 1
<br/>
<br/>
Table of coefficients:
<br/>
  <img width="539" height="306" alt="image" src="https://github.com/user-attachments/assets/32308a7b-9e0f-4ff6-95df-7d3dbb0c4602" />
<br/>
All predictors statistically significant except for caffeine consumption
