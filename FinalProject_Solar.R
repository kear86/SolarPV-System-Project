SolarAdopt <- read.csv("https://query.data.world/s/z7sgmrb66bsgxwjid6rtloauj3lq4b", header=TRUE, stringsAsFactors=FALSE);
View(SolarAdopt)
SolarConsider <- read.csv("https://query.data.world/s/h2uzczihps6wlgywy5ognxxw4bseaz", header=TRUE, stringsAsFactors=FALSE);

SolarSpecs <- read.csv("https://query.data.world/s/32lvde7ohhsda7rhljwd3uq5i4kre2", header=TRUE, stringsAsFactors=FALSE);

#Creating vectors with specific themes and categories to be able to visualize
#them without other variables getting in the way. 
#The SolarAdopt dataframe is what I am subsetting in categories below. 

#This category provides demographics on the adopter and their answers to what prompted
#them to get solar
KeepPromptsAD <- c("CASE_ID", "STATE", "PEOPLE_TOT_3PLUS", "GENDER", "AGE_BINNED", "INCOME_BINNED","RETIRED", "PROMPT1", "PROMPT2", "PROMPT3", "PROMPT4", "PROMPT5", "PROMPT6",
  "PROMPT7", "PROMPT8", "PROMPT9", "PROMPT10", "PROMPT11", "PROMPT12", "PROMPT13", "PROMPT14", "PROMPT15")

##This category provides demographics on the adopter and their answers to what motivated
#them to get solar
KeepMotivesAD <- c("CASE_ID", "STATE", "PEOPLE_TOT_3PLUS", "GENDER","MOTIVE1", "MOTIVE2", "MOTIVE3", "MOTIVE4", "MOTIVE5", "MOTIVE6", "MOTIVE7",
  "MOTIVE8", "MOTIVE9")

##This category provides demographics on the adopter and their answers to what influenced
#them to get solar
KeepInfluencesAD <- c("CASE_ID", "STATE", "PEOPLE_TOT_3PLUS", "GENDER", "AGE_BINNED", "INCOME_BINNED","RETIRED",
  "INFLNC_FIRST","INFLNC_SAW", "INFLNC_PPLTALK", "INFLNC_ADS", "INFLNC_OTHKNEW", 
  "INFLNC_OTHKNEW_NUM", "INFLNC_OTH_MULT1", "INFLNC_OTH_MULT2", "INFLNC_OTH_MULT3", "INFLNC_OTH_MULT4", 
  "INFLNC_OTH_MULT5", "INFLNC_OTH_MULT6", "INFLNC_OTH_MULT7", "INFLNC_OTH_ONE1", "INFLNC_OTH_ONE2", 
  "INFLNC_OTH_ONE3", "INFLNC_OTH_ONE4", "INFLNC_OTH_ONE5", "INFLNC_OTH_ONE6")

##This category provides demographics on the adopter and their answers to how their
#experience of adopting solar went and how much the referred people to get solar. 
KeepExpAndRefsAD <- c("CASE_ID", "STATE", "PEOPLE_TOT_3PLUS", "GENDER", "AGE_BINNED", "INCOME_BINNED","RETIRED",
  "NPS_PANELS", "NPS_INSTALLER", "EXPERIENCE1", "EXPERIENCE2", 
  "EXPERIENCE3", "EXPERIENCE4", "EXPERIENCE5", "EXPERIENCE6", "REGRETS", "TOLD_OTHERS", "TOLD_OTHERS_NUM", 
  "TOLD_OTHERS_LOCAL", "REFERRAL_NUM", "REFERRAL_WHEN1", "REFERRAL_WHEN2", "REFERRAL_WHEN3", "REFERRAL_WHEN4")

##This category provides demographics on the adopter and their answers questions about
#their personal values and beliefs
KeepPersValuesAD <- c("CASE_ID", "STATE", "PEOPLE_TOT_3PLUS", "GENDER", "AGE_BINNED", "INCOME_BINNED","RETIRED",
  "PN1", "PN2", "E2", "BB1", "BB2", "BE13", "BE10", "CIJM1", "CIJM2", "CIJM3"
  )

#Created dataframes from the vector categories
ADprompt <- SolarAdopt[KeepPromptsAD]
ADmotives <- SolarAdopt[KeepMotivesAD]
ADinfluences <- SolarAdopt[KeepInfluencesAD]
ADexpANDrefs <- SolarAdopt[KeepExpAndRefsAD]
ADpersValues  <- SolarAdopt[KeepPersValuesAD]

View(ADprompt)
View(ADmotives)
View(ADinfluences)
View(ADexpANDrefs)
View(ADpersValues)

#Will add columns that have the categorical information for  better visualization.
ADprompt$StateR <- NA
ADprompt$StateR[ADprompt$STATE== 1]<- "New Jersey"
ADprompt$StateR[ADprompt$STATE== 2]<- "New York (state)"
ADprompt$StateR[ADprompt$STATE== 3]<- "Arizona"
ADprompt$StateR[ADprompt$STATE== 4]<- "California"

ADmotives$StateR <- NA
ADmotives$StateR[ADmotives$STATE== 1]<- "New Jersey"
ADmotives$StateR[ADmotives$STATE== 2]<- "New York (state)"
ADmotives$StateR[ADmotives$STATE== 3]<- "Arizona"
ADmotives$StateR[ADmotives$STATE== 4]<- "California"

ADinfluences$StateR <- NA
ADinfluences$StateR[ADinfluences$STATE== 1]<- "New Jersey"
ADinfluences$StateR[ADinfluences$STATE== 2]<- "New York (state)"
ADinfluences$StateR[ADinfluences$STATE== 3]<- "Arizona"
ADinfluences$StateR[ADinfluences$STATE== 4]<- "California"

ADexpANDrefs$StateR <- NA
ADexpANDrefs$StateR[ADexpANDrefs$STATE== 1]<- "New Jersey"
ADexpANDrefs$StateR[ADexpANDrefs$STATE== 2]<- "New York (state)"
ADexpANDrefs$StateR[ADexpANDrefs$STATE== 3]<- "Arizona"
ADexpANDrefs$StateR[ADexpANDrefs$STATE== 4]<- "California"

ADpersValues$StateR <- NA
ADpersValues$StateR[ADpersValues$STATE== 1]<- "New Jersey"
ADpersValues$StateR[ADpersValues$STATE== 2]<- "New York (state)"
ADpersValues$StateR[ADpersValues$STATE== 3]<- "Arizona"
ADpersValues$StateR[ADpersValues$STATE== 4]<- "California"

#Creating vectors with specific themes and categories to be able to visualize
#them without other variables getting in the way. 
#The SolarConsider dataframe is what I am subsetting in categories below. 

#This category provides demographics on the considerer and their answers to why they 
#are considering getting solar. 

KeepPromptsCN <- c("CASE_ID", "STATE", "PEOPLE_TOT_3PLUS", "GENDER", "AGE_BINNED", "INCOME_BINNED","RETIRED", "PROMPT1", "PROMPT2", "PROMPT3", "PROMPT4", "PROMPT5", "PROMPT6",
            "PROMPT7", "PROMPT8", "PROMPT9", "PROMPT10", "PROMPT11", "PROMPT12", "PROMPT13", "PROMPT14", "PROMPT15")

KeepMotivesCN <- c("CASE_ID", "STATE", "PEOPLE_TOT_3PLUS", "GENDER","MOTIVE1", "MOTIVE2", "MOTIVE3", "MOTIVE4", "MOTIVE5", "MOTIVE6", "MOTIVE7",
                   "MOTIVE8", "MOTIVE9")

KeepInfluencesCN <- c("CASE_ID", "STATE", "PEOPLE_TOT_3PLUS", "GENDER", "AGE_BINNED", "INCOME_BINNED","RETIRED",
                      "INFLNC_SAW", "INFLNC_PPLTALK", "INFLNC_ADS", "INFLNC_OTHKNEW", 
                      "INFLNC_OTHKNEW_NUM", "INFLNC_OTH_MULT1", "INFLNC_OTH_MULT2", "INFLNC_OTH_MULT3", "INFLNC_OTH_MULT4", 
                      "INFLNC_OTH_MULT5", "INFLNC_OTH_MULT6", "INFLNC_OTH_MULT7", "INFLNC_OTH_ONE1", "INFLNC_OTH_ONE2", 
                      "INFLNC_OTH_ONE3", "INFLNC_OTH_ONE4", "INFLNC_OTH_ONE5", "INFLNC_OTH_ONE6")

KeepConStopCN <- c("CASE_ID", "STATE", "PEOPLE_TOT_3PLUS", "GENDER", "AGE_BINNED", "INCOME_BINNED","RETIRED",
                   "CONCERN1_STOP", "CONCERN2_STOP", "CONCERN3_STOP", "CONCERN4_STOP", 
                   "CONCERN5_STOP", "CONCERN6_STOP", "CONCERN7_STOP", "CONCERN8_STOP",
                   "CONCERN9_STOP") 

KeepPersValuesCN <- c("CASE_ID", "STATE", "PEOPLE_TOT_3PLUS", "GENDER", "AGE_BINNED", "INCOME_BINNED","RETIRED",
                      "PN1", "PN2", "E2", "BB1", "BB2", "BE13", "BE10", "CIJM1", "CIJM2", "CIJM3")

CNprompt <- SolarConsider[KeepPromptsCN]
CNmotives <- SolarConsider[KeepMotivesCN]
CNinfluences <- SolarConsider[KeepInfluencesCN]
CNconcernStop <- SolarConsider[KeepConStopCN]
CNpersValues  <- SolarConsider[KeepPersValuesCN]

library("rcompanion")
library(ggplot2)

#Before adding the state string column, will continue on to the 3rd dataset and subset. 
#Creating vectors with specific themes and categories to be able to visualize
#them without other variables getting in the way. 
#The SolarSpecs dataframe is what I am subsetting in categories below. 

#This category provides demographics and values on control group and their answers to why they 
#are considering getting solar. 

#KeepTrigsGPS <- c("CASE_ID", "STATE", "PEOPLE_TOT_3PLUS", "GENDER", "AGE_BINNED", "INCOME_BINNED","RETIRED",
#                  "F1", "F2", "TRIG1", "TRIG3", "TRIG2", "TRIG4", "N1","N2")
#BELOW DIDN'T WORK: 
#x <- cbind(ADprompt$STATE,ADprompt$GENDER,ADprompt$PEOPLE_TOT_3PLUS,ADprompt$AGE_BINNED, ADprompt$INCOME_BINNED)
#y <- cbind(ADprompt$PROMPT1,ADprompt$PROMPT2,ADprompt$PROMPT3,ADprompt$PROMPT4, ADprompt$PROMPT5, ADprompt$PROMPT6)
#matplot(x,y,type="p")

#Export one dataframe to experiment with in Python
write.csv(ADprompt,"/Users/karina/Desktop/ADprompt.csv")


#Found that may need to merge Adopter and Considerer 
#dataframes to really test.

#First add column that indicates has solar 0:no / 1: yes

#x<-rep(c(1),times=1406)
#ADprompt1 <-ADprompt(x)
#ADprompt1

#Create vector/list to add new column indicating whether someone has 
# solar or not so we can join both adopter and considerer dataframes 
#for different categories

#below are the two vectors/variables for yes/no to solar PVs.
myList1 <- rep(c(1),times=1604)
print(myList1)

myList0 <- rep(c(0),times=588)
print(myList0)

library(tibble)

#The below code creates a new column named SPVs to the ADprompt and 
#CNprompt dataframes of indicating whether they have solar or not.
ADprompt$SPVs <- myList1
CNprompt$SPVs <- myList0

View(ADprompt)
View(CNprompt)

#Will do the same for Motives:
ADmotives$SPVs <- myList1
CNmotives$SPVs <- myList0

View(ADmotives)
View(CNmotives)
#Will actually append all rows into one dataframe.

#had to subset because had an additional column that CNprompt didnt have
ADprompt2 <- subset(ADprompt, select = -c(StateR))
View(ADprompt2)

#Same proces here with ADmotives
ADmotives2 <- subset(ADmotives, select = -c(StateR))
View(ADmotives2)

#actual code to bind 2 dataframes with same column structure
PromptsDF_Repeat <- rbind(ADprompt2, CNprompt)
View(PromptsDF_Repeat)

MotivesDF <- rbind(ADmotives2, CNmotives)
View(MotivesDF)
#Was prompted by R to take out all NAs due to backwards elimination
#not working to it's full capacity. So created a new database just in case. 
PromptsDF1_NoNAs <- na.omit(PromptsDF_Repeat)
View(PromptsDF1_NoNAs)

MotivesDF_NoNAs <- na.omit(MotivesDF)
View(MotivesDF_NoNAs)
#Now can look into doing stepwise regression 
#Backward Elimination - Summary to start
FitAll = lm(SPVs ~ PEOPLE_TOT_3PLUS + GENDER + AGE_BINNED + INCOME_BINNED +
  RETIRED + PROMPT1+PROMPT2+PROMPT3+PROMPT4+PROMPT5+PROMPT6+
  PROMPT7 + PROMPT8 + PROMPT9 + PROMPT10 + PROMPT11 + PROMPT12 + 
  PROMPT13 + PROMPT14 + PROMPT15, data = PromptsDF1_NoNAs)
summary(FitAll)

#Backward  Elimination
step(FitAll, direction = 'backward')
#results: Not sure why the AIC is so large and negative.
#Maybe due to there being more than 10 predictors. 

#Because of that I am going to subset the demographics and SPVs
#& promots and SPVs and see if that changes things. 
KeepDemsDF_NoNAs <- c("SPVs", "PEOPLE_TOT_3PLUS", "STATE", "PEOPLE_TOT_3PLUS", "GENDER", "AGE_BINNED", "INCOME_BINNED","RETIRED")
KeepPromptsDF_NoNAs <- c("SPVs", "PROMPT1", "PROMPT2", "PROMPT3", "PROMPT4", "PROMPT5", "PROMPT6",
"PROMPT7", "PROMPT8", "PROMPT9", "PROMPT10", "PROMPT11", "PROMPT12", "PROMPT13", "PROMPT14", "PROMPT15")

DemsDF_NoNAs <- PromptsDF1_NoNAs[KeepDemsDF_NoNAs]
PromptsDF_NoNAs <- PromptsDF1_NoNAs[KeepPromptsDF_NoNAs]
View(DemsDF_NoNAs)

#So now that I have DemsDF_NoNAs and PromptsDF_NoNAs dataframes I am
#going to create a new linear model to do backwards elimination and see
#if the AIC changes in value. 

#Summary of the linear model, shows which factors are significant. 
FitAll.Dems = lm(SPVs ~ . , data = DemsDF_NoNAs)
summary(FitAll.Dems)

#Backwards elimination for Demographics only. 
step(FitAll.Dems, direction = 'backward')
#Results: Still had AIC that was in the thousands. 

#Creating a linear model for PromptsDF_NoNAs Dataframe
FitAll.Prompts = lm(SPVs ~ . , data = PromptsDF_NoNAs)
summary(FitAll.Prompts)

#Backward elimination for prompts only
step(FitAll.Prompts, direction = 'backward')

#Will remove Considerers out of the analysis and will come back 
#to them after the completion of the final project.
View(PromptsDF1_NoNAs)
#The above dataframe is the one that has demographics and prompts
#for both considerers and adopters. 

#Below I have prompted all considerer rows to be deleted and 
#all state participants except CA. As we have narrowed down our
#project to Adopters and California residents only. 
PromptsCA_NoNAs <- subset(PromptsDF1_NoNAs, PromptsDF1_NoNAs$SPVs != 0 & PromptsDF1_NoNAs$STATE != 1 &
                            PromptsDF1_NoNAs$STATE != 2 & PromptsDF1_NoNAs$STATE != 3) 
View(PromptsCA_NoNAs)

#Now can subset the demographics, prompts, motives, and personal values
#of the adopters to run stepwise regression. 

KeepDems <- c("SPVs", "STATE", "PEOPLE_TOT_3PLUS", "GENDER", "AGE_BINNED", "INCOME_BINNED","RETIRED")
KeepPrompts <- c("SPVs","PROMPT1", "PROMPT2", "PROMPT3", "PROMPT4", "PROMPT5", "PROMPT6",
                 "PROMPT7", "PROMPT8", "PROMPT9", "PROMPT10", "PROMPT11", "PROMPT12", "PROMPT13", "PROMPT14", "PROMPT15")

DemsCA_NoNAs <- PromptsCA_NoNAs[KeepDems]
PromptsCA1_NoNAs <-PromptsCA_NoNAs[KeepPrompts]

#Run Stepwise regression with these two dataframes. HOWEVER, SPVs
#now only has one level, which I am not sure works for regression. 
#but will run anyway. 

FitAll.DemsCA = lm(SPVs ~ . , data = DemsCA_NoNAs)
summary(FitAll.DemsCA)

step(FitAll.DemsCA, direction = 'backward')


FitAll.PromptsCA = lm(SPVs ~ . , data = PromptsCA1_NoNAs)
summary(FitAll.PromptsCA)
#Results don't show anything I believ because there is only one level
#to SPVs - Get a warning: attempting model selection on an essentially perfect fit is nonsense
#Which I believe is due to the same. 

#KeepMotives <- c("SPVs", "STATE", "PEOPLE_TOT_3PLUS", "GENDER","MOTIVE1", "MOTIVE2", "MOTIVE3", "MOTIVE4", "MOTIVE5", "MOTIVE6", "MOTIVE7",
                # "MOTIVE8", "MOTIVE9")
#KeepPersValues <- c("SPVs", "STATE", "PEOPLE_TOT_3PLUS", "GENDER", "AGE_BINNED", "INCOME_BINNED","RETIRED",
                  #  "PN1", "PN2", "E2", "BB1", "BB2", "BE13", "BE10", "CIJM1", "CIJM2", "CIJM3")

#3rd attempt at getting some results - Will now go back and add 
#considerers for that point of comparison in analysis but took out all states except CA.

View(PromptsDF1_NoNAs)
PromptsCA2_NoNAs <- subset(PromptsDF1_NoNAs, PromptsDF1_NoNAs$STATE != 1 &
                            PromptsDF1_NoNAs$STATE != 2 & PromptsDF1_NoNAs$STATE != 3) 
View(PromptsCA2_NoNAs)

#This will do the same process for MotivesDF
MotivesDF1_NoNAs <- subset(MotivesDF_NoNAs, MotivesDF_NoNAs$STATE != 1 &
                             MotivesDF_NoNAs$STATE != 2 & MotivesDF_NoNAs$STATE != 3) 
View(MotivesDF1_NoNAs)

#Subset the prompts and SPVs again. 
KeepPromptsCA <- c("SPVs","PROMPT1", "PROMPT2", "PROMPT3", "PROMPT4", "PROMPT5", "PROMPT6",
                                  "PROMPT7", "PROMPT8", "PROMPT9", "PROMPT10", "PROMPT11", "PROMPT12", "PROMPT13", "PROMPT14", "PROMPT15")
PromptsCA3_NoNAs <-PromptsCA2_NoNAs[KeepPromptsCA]
View(PromptsCA3_NoNAs)

#Subset the motives and SPVs again. 
KeepMotivesCA <- c("SPVs", "MOTIVE1", "MOTIVE2", "MOTIVE3", "MOTIVE4", "MOTIVE5", "MOTIVE6", "MOTIVE7",
                    "MOTIVE8", "MOTIVE9")
MotivesCA_NoNAs <- MotivesDF1_NoNAs[KeepMotivesCA]
View(MotivesCA_NoNAs)

#Will now try stepwise regression again with CA both adopters and considerers 
FitAll.PromptsCA1 = lm(SPVs ~ . , data = PromptsCA3_NoNAs)
summary(FitAll.PromptsCA1)

FitAll.MotivesCA = lm(SPVs ~ . , data = MotivesCA_NoNAs)
summary(FitAll.MotivesCA)

#Backward elimination
step(FitAll.PromptsCA1, direction = 'backward')
#Results: It provided a best fit model with both prompt items that were 
#most and least influencial - both statistically significant. 

step(FitAll.MotivesCA, direction = 'backward')
#This model provided 1 motive as a best fit model.Which feels moot.


FitsomePromptsCA = lm(SPVs ~ PROMPT2 + PROMPT3 + PROMPT4 + PROMPT7 + PROMPT8 + 
               PROMPT9 + PROMPT10 + PROMPT11 + PROMPT13 + PROMPT14 + PROMPT15, 
             data = PromptsCA3_NoNAs)
summary(FitsomePromptsCA)
#Results didn't really change in that the model only explains 15% of
#the influence on whether someone gets SPVs or not. So not very telling.

FitsomeMotivesCA = lm(SPVs ~  MOTIVE2, data = MotivesCA_NoNAs)
summary(FitsomeMotivesCA)
#Results show that the best fit model accounts for less than 1 percent of
#influence on having solar or not. / Could be doing something wrong. 

#What if we try logistic regression?
library(ggplot2)
library(lattice)
library(dplyr)
library(caret)
library(magrittr)
library(tidyr)
library(lmtest)
library(popbio)
library(e1071)

View(PromptsCA3_NoNAs)

mylogit <- glm(SPVs ~ PROMPT14, data = PromptsCA3_NoNAs, family="binomial")
#Chose PROMPT14 - bc approached by an installer

#Create a probability for prediction.
Probabilities <- predict(mylogit, type="response")
PromptsCA3_NoNAs$Predicted <- ifelse(Probabilities > .5, "pos", "neg")
PromptsCA3_NoNAs$PredictedR <- NA
PromptsCA3_NoNAs$PredictedR [PromptsCA3_NoNAs$Predicted == 'pos'] <- 1
PromptsCA3_NoNAs$PredictedR [PromptsCA3_NoNAs$Predicted == 'neg'] <- 0

#Convert variables to factors 
PromptsCA3_NoNAs$PredictedR <- as.factor(PromptsCA3_NoNAs$PredictedR)
PromptsCA3_NoNAs$SPVs <- as.factor(PromptsCA3_NoNAs$SPVs)

#Create a Confusion Matrix
Conf_mat <- caret::confusionMatrix(PromptsCA3_NoNAs$PredictedR,
                                   PromptsCA3_NoNAs$SPVs)
Conf_mat
#Did not meet the first assumption of at least 
#5 items in eaach slot of the matrix    
#RUN CORRELATION MATRIX... 
                                   
#What if we try chi-square?
