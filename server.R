 icefruit <- function(fruit){ 
   if (fruit=="strawberry") "Strawberry Cheesecake"
   else if (fruit=="banana") "Babana Split"
   else if (fruit=="coconut") "Coconutterly Fair"
   else if (fruit=="blueberry") "Blueberry Greek Frozen Yogurt"
 } 
 
 icetopping <- function(topping){ 
   if (topping=="oreos") "Cookie Dough"
   else if (topping=="white chocolate") "Baked Alaska"
   else if (topping=="caramel") "Caramel Chew Chew"
   else if (topping=="peanuts") "Peanutbutter Cup" 
  
 } 

 shinyServer( 
         function(input, output) { 
                 output$inputValue <- renderPrint({input$fruit}) 
                 output$prediction <- renderPrint({icefruit(input$fruit)}) 
                  
                 output$inputValue2 <- renderPrint({input$topping}) 
                 output$prediction2 <- renderPrint({icetopping(input$topping)}) 
         } 
 ) 
