# Sleep-Efficiency-Regression-Analysis
Sleep Efficiency Statistical Study: A Multiple Linear Regression Analysis

Background: Sleep is a fundamental aspect of human life, critical for maintaining 
health and functionality. This research aims to provide valuable insights into 
how various lifestyle and biological factors contribute to sleep quality, 
offering potential pathways for improving overall sleep health.

Goal:
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
* Run a multiple linear regression using the above factors as predictors in a
  model of the form:
  $Y_i = \beta_0 + \beta_1x_{i_1} + \beta_2x_{i_2} + \beta_3x_{i_3} + \beta_4x_{i_4} + \beta_5x_{i_5} + \beta_6x_{i_6} + \beta_7x_{i_7}$
  with each $x_{i_k}$ representing different predictor variables mentioned above.
