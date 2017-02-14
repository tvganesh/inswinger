#########################################################################################################
#
# Title :  Inswinger - An interactive app to analyze International T20 Players, teams and matches 
# Designed and developed by: Tinniam V Ganesh
# Date : 12 Feb 2017
# File: data.R
# More details: https://gigadom.wordpress.com/
#
#########################################################################################################
load("./data/T20Batsmen.RData")
T20Batsmen <-T20Batsmen

#load("./data/T20bowlers.RData")
#T20Bowlers <-T20Bowlers

a <-list.files("T20Matches/")
T20Matches <- gsub(".RData","",a)

a1 <-list.files("T20Matches2Teams/")
T20Matches2Teams <- gsub(".RData","",a1)

a2 <-list.files("allMatchesallOppn/")
T20TeamsAll <- gsub(".RData","",a2)
