#########################################################################################################
#
# Title :  Inswinger - An interactive app to analyze International T20 Players, teams and matches 
# Designed and developed by: Tinniam V Ganesh
# Date : 12 Feb 2017
# File: definitions.R
# More details: https://gigadom.wordpress.com/
#
#########################################################################################################
# Function names for T20  batsman analysis
T20BatsmanFuncs <- c("Batsman Runs vs. Deliveries",
                       "Dismissals of batsman",
                       "Batsman's Runs vs Strike Rate",
                       "Batsman's Moving Average",
                       "Batsman's Cumulative Average Runs",
                       "Batsman's Cumulative Strike Rate",
                       "Batsman's Runs against Opposition",
                       "Batsman's  Runs at Venue",
                       "Predict Runs of batsman")



# Function names for T20 bowler analysis
T20BowlerFuncs <- c("Mean Economy Rate of bowler",
                     "Mean runs conceded by bowler",
                     "Bowler's Moving Average",
                     "Bowler's Cumulative Avg. Wickets",
                     "Bowler's Cumulative Avg. Economy Rate",
                     "Bowler's Wicket Plot",
                     "Bowler's Wickets against opposition",
                     "Bowler's Wickets at Venues",
                     "Bowler's wickets prediction")


# Functions to analyze T20 matches
T20MatchFuncs <- c("Match Batting Scorecard",
                   "Batting Partnerships",
                   "Batsmen vs Bowlers",
                   "Bowling Wicket Kind",
                   "Match Bowling Scorecard",
                   "Bowling Wicket Runs",
                   "Bowling Wicket Match",
                   "Bowler vs Batsmen",
                   "Match Worm Graph")


# Functions to analyze T20 matches
T20Matches2TeamsFuncs <- c("Team Batsmen Batting Partnerships All Matches",
                           "Team Batting Scorecard All Matches",
                            "Team Batsmen vs Bowlers all Matches",
                            "Team Wickets Opposition All Matches",
                           "Team Bowling Scorecard All Matches",
                            "Team Bowler vs Batsmen All Matches",
                            "Team Bowlers Wicket Kind All Matches",
                            "Team Bowler Wicket Runs All Matches",
                            "Win Loss All Matches")

# Functions to analyze T20 teams' overall performance
T20TeamOverallPerfFunc <- c("Team Batsmen Partnerships Overall",
                            "Team Batting Scorecard Overall",
                           "Team Batsmen vs Bowlers Overall",
                           'Team Bowler vs Batsmen Overall',
                           "Team Bowling Scorecard Overall",
                           "Team Bowler Wicket Kind Overall")

# T20 Team names
T20TeamNames <- list("Afghanistan","Australia","Bangladesh","Bermuda","Canada","England",
                     "Hong Kong"," India","Ireland","Kenya","Nepal","Netherlands","New Zealand",
                     "Oman","Pakistan","Papua New Guinea","Scotland","South Africa", "Sri Lanka",
                     "United Arab Emirates", "West Indies","Zimbabwe")           

Country <- list("Afghanistan","Australia","Bangladesh","Bermuda","Canada","England",
                "Hong Kong","India","Ireland","Kenya","Nepal","Netherlands","New Zealand",
                "Oman","Pakistan","Papua New Guinea","Scotland","South Africa", "Sri Lanka",
                "United Arab Emirates", "West Indies","Zimbabwe")        

