#########################################################################################################
#
# Title :  Inswinger - An interactive app to analyze International T20 Players, teams and matches 
# Designed and developed by: Tinniam V Ganesh
# Date : 12 Feb 2017
# File: printOrPlotT20Match2Teams.R
# More details: https://gigadom.wordpress.com/
#
#########################################################################################################
printOrPlotT20Match2Teams <- function(input,output){
    # Get the IPL teams
    p <- strsplit(as.character(input$match2),"-")
    teams2 <- c(p[[1]][1],p[[1]][2])
    
    # Set the IPL teams
    output$selectTeam2 <- renderUI({ 
        selectInput('team2', 'Choose team',choices=teams2,selected=input$team2)
    })
    
    #Find the other team
    otherTeam = setdiff(teams2,input$team2)
    a <- analyzeT20Matches2Teams(input$match2,input$matches2TeamFunc,input$plotOrTable1,
                                 input$repType,input$team2,otherTeam)
    a
}