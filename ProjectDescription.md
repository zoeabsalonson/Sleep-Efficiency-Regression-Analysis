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
    where $Y_i$ is the predicted sleep efficiency for for individual number $i (i = 1, 2, …, 386)$
    and $x_{i_j}$ is the value of the predictor variable $x_k (k = 1, 2, …, 7)$ for individual $i (i= 1, 2, …, 386)$.
  
Key Findings:
