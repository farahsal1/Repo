shinyUI(pageWithSidebar(
  headerPanel("Fancy Burger Place Bill Calculation"),
    sidebarPanel(
      numericInput("Burgers", "Number of burgers ordered:",0,min=0,max=90,step=1),
      checkboxGroupInput("Fries","Fries",
                         c("0"="", "1"="1", "2"="2", "3"="3")),
      numericInput("Tips","Amount tipped:", 0, min=0,max=NA,step=NA),
      checkboxInput("ExtraSauce", "Extra Sauce", value=FALSE),
      submitButton("Submit")
    ) , mainPanel(
      h3("To Pay"),
      h4("Burgers @ $4.5 each:"),
      verbatimTextOutput("Burgers"),
      h4("Fries @ $2.00 each:"),
      verbatimTextOutput("Fries"),
      h4("Extra Sauce 50 cents"),
      verbatimTextOutput("ExtraSauce"),
      h4("Tips"),
      verbatimTextOutput("Tips"),
      h4("Here is the Total Price:"),
      verbatimTextOutput("Prediction")
    )
))

 