read.csv("kffmarch21.csv")

survey <- read.csv("kffmarch21.csv")

survey$vaches

survey$recage2

table(survey$vaches)

survey$VaccineHes1 <- ifelse(survey$vaches == "Only get the vaccine if you are required to do so for work, school, or other activities" |
                     survey$vaches == "Definitely not get the vaccine", 1, 0) ### separating the responses for question 18 into hesitant (responses 3 and 4) and receptive (1 and 2)

table(survey$VaccineHes1, survey$vaches )
table(survey$age2)


table(survey$recage2, survey$VaccineHes1)

condmeans <- tapply(survey$VaccineHes1, survey$recage2, mean)

condmeans

barplot(condmeans,
        ylim =  c(0,1), # y-axis dimensions
        names = c("18-29", "30-49", "50-64", 
                  "65+", "DK/RF"),
        col = "red", # color of bars
        main = "Vaccine Hesitancy By Age Group", # plot title
        cex.main = .8, # size of plot title
        cex.names = .8, # size of name labels
        ylab = "Reported Hesitancy", # yaxis label
        cex.lab = .8,# size of yaxis label
        las = 1) # controls angle of axis labels### Bar graph to visualize how the attitudes change across age cohorts


