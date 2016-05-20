---
title       : Ice Cream Advisor
subtitle    : a flavor helper
author      : Ivan Fernandez
job         : Ice Cream Enthusiast
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : zenburn      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

## Background

1. Selecting the correct type of ice cream is one of the most important decisions an individual faces everyday. 
2. Differences in taste and preferences have trigger an unprecedented production of very different ice cream flavors and combinations
3. Most americans spend an average of .10 hours/day selecting the correct ice cream
4. Left unchecked, the amount spent on ice cream selection could double in the next 100 years


--- 

## Approach

1. We have survey and compiled peoples preferences for the past year idenfiying some very simple and common flavors

2. Ice cream is composed of two main flavors: fruit and topping

3. The top fruit flavors are: 
 1.-Strawberry
 2.-Coconut
 3.-Banana
 4.-Blueberry
  
4. The top toppings are:
  1.-Caramel
  2.-White Chocolate
  3.-Peanuts
  4.-Oreos
  
5. Our simple Advisor engine pairs these flavors with the correct Ben and Jerry's Ice Cream our research has idenfified as optimal

6. Application URL:  https://ivanjfernandez1.shinyapps.io/ice_cream/
7. Github Shiny: https://github.com/ivanjfernandez1/Applications
8. Ben and Jerry's: http://www.benjerry.com/

---

## Ice Cream Survey Resuls

  1.  strawberry=Strawberry Cheesecake
  2.  banana=Babana Split
  3.  coconut=Coconutterly Fair
  4.  blueberry=Blueberry Greek Frozen Yogurt
  5.  oreos=Cookie Dough
  6.  White Chocolate=Baked Alaska
  7.  caramel=Caramel Chew Chew
  8.  peanuts=Peanutbutter Cup


---

## Code

shinyUI( 
          pageWithSidebar( 
                    
                   headerPanel("Music and movie prediction"), 
                   sidebarPanel( 
                           textInput('fruit', label="favorite fruit?(strawberry, blueberry, coconut or banana)"), 
                           textInput('topping', label="favorite topping?(caramel, peanuts, white chocolate or oreos"), 
                           submitButton('Submit for flavor') 
                   ), 
                   mainPanel( 
                           h3('Ice Cream Advisor'), 
                           h4('Your favorite fruit'), 
                           verbatimTextOutput("inputValue"), 
                           h4('Your favorite topping'), 
                           verbatimTextOutput("inputValue2"), 
                           h4('You must try this one '), 
                           verbatimTextOutput("prediction"), 
                           h4('This one is right up your ally '), 
                           verbatimTextOutput("prediction2") 
                   ) 
           ) 
   ) 

 
 
---




