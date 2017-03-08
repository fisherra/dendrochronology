################################################################
##                      Bijou Creek Project                   ##
##                scPDSI calculation from local data          ##
################################################################

## Instructions to isntall the pdsi algorithm 

# install.packages(“devtools”)
# library(devtools)
# install_github(“cszang/pdsi”)
# library(pdsi)

## load the dataset
clim <- as.data.frame(byers_scPDSI_input)

## run the program 
palmer <- pdsi( 12, 40, clim, 1932 , 2014, mode="scpdsi")

## Export the results 
#write.csv(palmer, file = "scPDSI output", sep = " ")

## END ##
