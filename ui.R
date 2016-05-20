shinyUI( 
          pageWithSidebar( 
                    
                   headerPanel("Ice Cream Advisor"), 
                   sidebarPanel( 
                           textInput('fruit', label="favorite fruit?(strawberry, blueberry, coconut or banana)"), 
                           textInput('topping', label="favorite topping?(caramel, peanuts, white chocolate or oreos"), 
                           submitButton('Submit for flavor') 
                   ), 
                   mainPanel( 
                           h3('Our suggestions to you'), 
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
