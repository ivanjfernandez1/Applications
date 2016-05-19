shinyUI( 
          pageWithSidebar( 
                    
                   headerPanel("Music and movie prediction"), 
                   sidebarPanel( 
                           textInput('fruit', label="favorite fruit"), 
                           textInput('topping', label="favorite topping"), 
                           submitButton('Submit for flavor') 
                   ), 
                   mainPanel( 
                           h3('Ice Cream Advisor'), 
                           h4('What is your favorite fruit(strawberry, blueberry, coconut or banana)?'), 
                           verbatimTextOutput("inputValue"), 
                           h4('Your Selection'), 
                           verbatimTextOutput("inputValue2"), 
                           h4('You must try this one '), 
                           verbatimTextOutput("prediction"), 
                           h4('This one is right up your ally '), 
                           verbatimTextOutput("prediction2") 
                   ) 
           ) 
   ) 
