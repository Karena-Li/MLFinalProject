library(shiny)

shinyServer(
  function(input,output){
    a <- reactive({
      input$weight*10000/(input$height)^2
    })
    output$BMI <- renderText({a()})
    output$comm <- renderText({
      if (a() <= 15){
        print("Very severely underweight. You need to gain more weight. You should take proper sleep.")
      }else if (a() > 15 & a() <= 16){
        print("Severly underweight. Drink more water & eat regularly.")
      }else if (a() > 16 & a() <= 18.5){
        print("Underweight, take some supplement.")
      }else if (a() > 18.5 & a() <= 25){
        print("Congratulation! You have healthy weight.")
      }else if (a() > 25 & a() <= 30){
        print("Overweight; early to bed & early to raise 
              makes a man healthy, wealthy & wise")
      }else if (a() > 30 & a() <= 35){
        print("Obese Class I(Moderately obese,) You should control your diet.")
      }else if (a() > 35 & a() <= 40){
        print("Obese Class II(Severly obese), follow your doctor advice.")
      }else {
        print("Obese Class III(Very severly obese)")
      }
    })
    output$gender <- renderText(input$gender)
 }
)
