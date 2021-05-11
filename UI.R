library(shiny)
shinyUI(fluidPage(
  titlePanel("Calculator of body mass index"),
  sidebarLayout(
    sidebarPanel(
      ("Enter your personal information"),
      numericInput("height", "Enter your height in cm", 100, min = 5, max = 250),
      numericInput("weight", "Enter your weight in kg", 100, min = 2, max = 300),
      
      radioButtons("What is your gender?", c("Male", "Female"), ""),
      numericInput("What is your age?", 20, min = 1, max = 200),
      radioButtons("Wether have a family member suffered or suffers from overweight?", c("Yes", "No"), ""),
      radioButtons("Do you eat high caloric food frequently?", c("Yes", "No"), ""),
      radioButtons("Do you usually eat vegetables in your meals?", c("Never", "Sometimes","Always"), ""),
      radioButtons("How many main meals do you have daily?", c("1-2", "3","More than 3"), ""),
      radioButtons("Do you eat any food between meals?", c("No", "Sometimes","Frequently","Always"), ""),
      radioButtons("Do you smoke?", c("Yes", "No"), ""),
      radioButtons("How much water do you drink daily?", c("Less than a liter", "Between 1 and 2 L","More than 2 L"), ""),
      radioButtons("Do you monitor the calories you eat daily?", c("Yes", "No"), ""),
      radioButtons("How often do you have physical activity every week?", c("I do not have", "1-2 days","3-4 days","5-7 days"), ""),
      radioButtons("How much time do you use technological devices such as cell phone, videogames, television, computer and others?", c("0-2 hours", "3-5 hours","More than 5 hours"), ""),
      radioButtons("How often do you drink alcohol?", c("I do not drink", "Sometimes","Frequently","Always"), ""),
      radioButtons("Which transportation do you usually use?", c("Automobile", "Motorbike","Bike","Public Transportation","Walking"), "")),
    mainPanel(
      ("Future Obesity Level"),
tabsetPanel(type="tab",
                    
              tabPanel("BMIScore", textOutput("BMI")),
              tabPanel("Comments", textOutput("comm")),
              tabPanel("Personal information", textOutput("gender"))
              )
              )
  )
)
  
)

