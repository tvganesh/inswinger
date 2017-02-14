#########################################################################################################
#
# Title :  Inswinger - An interactive app to analyze International T20 Players, teams and matches 
# Designed and developed by: Tinniam V Ganesh
# Date : 12 Feb 2017
# File: printOrPlotT20Match.R
# More details: https://gigadom.wordpress.com/
#
#########################################################################################################
printOrPlotT20Match <- function(input,output){
    m <- strsplit(as.character(input$match),"-")
    teams <- c(m[[1]][1],m[[1]][2])
  
    
    # Set the IPL teams
    output$selectTeam <- renderUI({ 
        selectInput('team', 'Choose team',choices=teams,selected=input$team)
    })
 
    otherTeam = setdiff(teams,input$team)
    a <- analyzeT20Matches(input$match,input$matchFunc,input$plotOrTable,input$team,otherTeam)
    a
}