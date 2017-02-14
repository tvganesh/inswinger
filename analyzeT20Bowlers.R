#########################################################################################################
#
# Title :  Inswinger - An interactive app to analyze International T20 Players, teams and matches 
# Designed and developed by: Tinniam V Ganesh
# Date : 12 Feb 2017
# File: analyzeT20Bowlers.R
# More details: https://gigadom.wordpress.com/
#
#########################################################################################################
# Analyze T20 bowlers
analyzeT20Bowlers <- function(T20Bowler,func,country) {
  
    bowlerDF<- getBowlerWicketDetails(team=country,name=T20Bowler,dir="./data")
    print(dim(bowlerDF))
    
    # Call the necessary function
    if(func == "Mean Economy Rate of bowler"){
        bowlerMeanEconomyRate(bowlerDF,T20Bowler)
    } else if (func == "Mean runs conceded by bowler"){
        bowlerMeanRunsConceded(bowlerDF,T20Bowler)
    }     else if (func == "Bowler's Moving Average"){
        bowlerMovingAverage(bowlerDF,T20Bowler)
    } else if (func == "Bowler's Cumulative Avg. Wickets"){
        bowlerCumulativeAvgWickets(bowlerDF,T20Bowler)
    } else if (func == "Bowler's Cumulative Avg. Economy Rate"){
        bowlerCumulativeAvgEconRate(bowlerDF,T20Bowler)
    } else if (func == "Bowler's Wicket Plot"){
        bowlerWicketPlot(bowlerDF,T20Bowler)
    } else if (func == "Bowler's Wickets against opposition"){
        bowlerWicketsAgainstOpposition(bowlerDF,T20Bowler)
    } else if (func == "Bowler's Wickets at Venues"){
        bowlerWicketsVenue(bowlerDF,T20Bowler)
    } else if (func == "Bowler's wickets prediction"){
        # This is for the function wicket predict
        bowlerDF1 <- NULL
        # Create a consolidated Data frame of batsman for all T20 teams played
         
            # The below 2 lines for Bowler's wicket prediction
        df1 <- getDeliveryWickets(team=country,dir="./T20matches",name=T20Bowler,save=FALSE)
        
        
        bowlerWktsPredict(df1,T20Bowler)
        
    }

}

