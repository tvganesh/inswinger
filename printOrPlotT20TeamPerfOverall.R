#########################################################################################################
#
# Title :  Inswinger - An interactive app to analyze International T20 Players, teams and matches 
# Designed and developed by: Tinniam V Ganesh
# Date : 12 Feb 2017
# File: printOrPlotT20TeamPerfOverall.R
# More details: https://gigadom.wordpress.com/
#
#########################################################################################################
printOrPlotT20TeamPerfOverall <- function(input,output){
    # Set the rank of player
    rankValues <- c(1,2,3,4,5,6)
    output$Rank = renderUI({
        selectInput('rank', 'Choose the rank',choices=rankValues,selected=input$rank)
    })
    
    print(input$teamMatches)
    n <- strsplit(as.character(input$teamMatches),"-")
    
    analyzeT20TeamPerfOverall(input$teamMatches,input$overallperfFunc,n[[1]][2],input$rank,
                              input$plotOrTable2,
                              input$repType2)
    


}