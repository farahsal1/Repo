s<-function(Burgers, Fries, Tips, ExtraSauce) {
   if (ExtraSauce == TRUE) {
  y<-Burgers*4.5+as.numeric(Fries)*2.00 + Tips + 0.5
   } else {
  y<-Burgers*4.5+as.numeric(Fries)*2.00+Tips
   }
  print(y) 
}


shinyServer(function(input,output) {
output$Burgers<-renderText({input$Burgers})
output$Fries<-renderText({input$Fries})
output$Tips<-renderText({input$Tips})
output$ExtraSauce<-renderText({input$ExtraSauce})
output$Prediction<-renderText({s(input$Burgers, input$Fries, input$Tips, input$ExtraSauce)})

})  

