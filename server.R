#########################################################################################################
#
# Title :  Inswinger - An interactive app to analyze International T20 Players, teams and matches 
# Designed and developed by: Tinniam V Ganesh
# Date : 12 Feb 2017
# File: server.R
# More details: https://gigadom.wordpress.com/
#
#########################################################################################################
library(shiny)
library(yorkr)
library(rpart)
library(dplyr)
library(ggplot2)
library(rpart.plot)

# Source files

source("definitions.R")
source("funcs.R")
source("analyzeT20Batsmen.R")
source("analyzeT20Bowlers.R")
source("analyzeT20Matches.R")
source("analyzeT20Matches2Teams.R")
source("analyzeT20TeamPerfOverall.R")
source("printOrPlotT20Match.R")
source('printOrPlotT20Match2Teams.R')
source('printOrPlotT20TeamPerfOverall.R')
shinyServer(function(input, output,session) {
    
    output$selectBatsman <- renderUI({ 
        
        print(getwd())
        country_batsmen <- paste("./data/",input$country,"_batsmen.RData",sep="")
        print(country_batsmen)
        load(country_batsmen)
        batsmen <- n
        print(batsmen)
        selectInput('batsman', 'Choose batsman',choices=batsmen,selected=input$batsman)
        
    })
    
    
    # Analyze and display batsmen plots
    output$batsmanPlot <- renderPlot({  
        analyzeT20Batsmen(input$batsman,input$batsmanFunc,input$country)
        
    })
    
    # Analyze and display bowler plots
    
    output$selectBowler <- renderUI({ 
        
        country_bowlers <- paste("./data/",input$country1,"_bowlers.RData",sep="")
        
        print(input$country1)
        print(country_bowlers)
        load(country_bowlers)
        bowlers <- p1
        print(bowlers)
        selectInput('bowler', 'Choose bowler',choices=bowlers,selected=input$bowler)
        
    })
    output$bowlerPlot <- renderPlot({  
        analyzeT20Bowlers(input$bowler,input$bowlerFunc,input$country1)
        
    })
    
    ######################################## T20 Match  #############################################
    # Analyze and display T20 Match plot
    output$T20MatchPlot <- renderPlot({ 
        printOrPlotT20Match(input, output)
     
    })
    
    # Analyze and display T20 Match table
    output$T20MatchPrint <- renderTable({ 
        a <- printOrPlotT20Match(input, output)
        a 
        
    })
    # Output either a table or a plot 
    output$plotOrPrintT20Match <-  renderUI({ 
        # Check if output is a dataframe. If so, print
        if(is.data.frame(scorecard <- printOrPlotT20Match(input, output))){
            tableOutput("T20MatchPrint")
        }
        else{ #Else plot
            plotOutput("T20MatchPlot")
        }
      
    })
   
    #################################### T20 Matches between 2 teams ######################
    # Analyze Head to head confrontation of T20 teams
    
    # Analyze and display T20 Matches between 2 teams plot
    output$T20Match2TeamsPlot <- renderPlot({ 
        printOrPlotT20Match2Teams(input, output)
        
    })
    
    # Analyze and display T20 Match table
    output$T20Match2TeamsPrint <- renderTable({ 
        a <- printOrPlotT20Match2Teams(input, output)
        a
        #a
    })
    # Output either a table or a plot 
    output$plotOrPrintT20Match2teams <-  renderUI({ 
        # Check if output is a dataframe. If so, print
        if(is.data.frame(scorecard <- printOrPlotT20Match2Teams(input, output))){
            tableOutput("T20Match2TeamsPrint")
        }
        else{ #Else plot
            plotOutput("T20Match2TeamsPlot")
        }
        
    })
    

    
    ################################ T20 Teams's overall performance ##############################
    # Analyze overall T20 team performance plots
    output$T20TeamPerfOverallPlot <- renderPlot({ 
        printOrPlotT20TeamPerfOverall(input, output)
        
    })
    
    # Analyze and display T20 Match table
    output$T20TeamPerfOverallPrint <- renderTable({ 
        a <- printOrPlotT20TeamPerfOverall(input, output)
        a
        
    })
    # Output either a table or a plot 
    output$printOrPlotT20TeamPerfoverall <-  renderUI({ 
        # Check if output is a dataframe. If so, print
        if(is.data.frame(scorecard <- printOrPlotT20TeamPerfOverall(input, output))){
            tableOutput("T20TeamPerfOverallPrint")
        }
        else{ #Else plot
            plotOutput("T20TeamPerfOverallPlot")
        }
    })   

})
