convertAllYaml2RDataframesT20("t20s","matches")
saveAllMatchesBetweenTeams("matches")
saveAllMatchesAllOpposition("matches")

teams <-c("Australia","India","Pakistan","West Indies", 'Sri Lanka',
          "England", "Bangladesh","Netherlands","Scotland", "Afghanistan",
          "Zimbabwe","Ireland","New Zealand","South Africa","Canada",
          "Bermuda","Kenya","Hong Kong","Nepal","Oman","Papua New Guinea",
          "United Arab Emirates")

for(i in seq_along(teams)){
    print(teams[i])
    val <- paste(teams[i],"-details",sep="")
    val <- getTeamBattingDetails(teams[i],dir="./matches", save=TRUE)

}

for(i in seq_along(teams)){
    print(teams[i])
    val <- paste(teams[i],"-details",sep="")
    val <- getTeamBowlingDetails(teams[i],dir="./matches", save=TRUE)

}

####################
# Get batting details of from all Batting details RData and create T20Batsmen.RData
setwd("data")
fl <- dir(".")
a <- grep("Batting",fl)
battingV <- fl[a]

# Create a consolidate DF
df <- NULL
for(i in seq_along(battingV)){
    load(battingV[i])
    df <- rbind(df,battingDetails)
}

# Save batsmen
a <- df %>% distinct(batsman)
a$batsman = as.character(a$batsman)
T20Batsmen <- a[order(a$batsman),]
save(T20Batsmen, file="T20Batsmen.RData")
load("T20Batsmen.RData")

### Get bowling details from all Bowling details RData
#setwd("data")
fl1 <- dir(".")
b <- grep("Bowling",fl1)
bowlingV <- fl1[b]

# Create a consolidate DF
df1 <- NULL
for(i in seq_along(bowlingV)){
    load(bowlingV[i])
    df1 <- rbind(df1,bowlingDetails)
}

# Save batsmen
b <- df1 %>% distinct(bowler)
b$bowler = as.character(b$bowler)
T20Bowler <- b[order(b$bowler),]
save(T20Bowler, file="T20Bowlers.RData")
load("T20Bowlers.RData")


#Get batsmen of each country
setwd("data")
fl <- dir(".")
a <- grep("Batting",fl)
battingV <- fl[a]

# Create a consolidate DF
df <- NULL
for(i in seq_along(battingV)){
    load(battingV[i])
    # Remove BattingDetals.RData
    m <- gsub("-BattingDetails.RData","",battingV[i])
    #Save as batsmen
    n <- paste(m,"_batsmen",sep="")
    o <- paste(n,".RData",sep="")
    n <- getBatsmen(battingDetails)
    save(n,file=o)
}

#Get bowler of each country
setwd("data")
fl <- dir(".")
a <- grep("Bowling",fl)
bowlingV <- fl[a]

# Create a consolidate DF

for(i in seq_along(bowlingV)){
    load(bowlingV[i])
    # Remove BattingDetals.RData
    m1 <- gsub("-BowlingDetails.RData","",bowlingV[i])
    #Save as batsmen
    n1 <- paste(m1,"_bowlers",sep="")
    o1 <- paste(n1,".RData",sep="")
    p1 <- getBowlers(bowlingDetails)
    save(p1,file=o1)
}