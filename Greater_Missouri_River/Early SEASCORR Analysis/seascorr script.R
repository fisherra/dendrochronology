##################################################################
##              SEASCORR ANALYSIS 			                    	 ###
##      Calculating Chronology / Climate Correlations          ###
##################################################################

## Fisher Ankney
## Fisherankney@gmail.com
## 1/6/2017

## Load data and install packages
  library(treeclim)
  gm_clim <- data.frame()

## Run the Analysis
  cross_chron <- data.frame(cross_width$cross.std)
  row.names(cross_chron) = seq(1826,2015,by=1)

  smith_chron <- data.frame(smith_width$smith.std)
  row.names(smith_chron) = seq(1862,2015,by=1)

  kimball_chron <- data.frame(kimball_width$kimball.std)
  row.names(kimball_chron) = seq(1859,2014,by=1)

## Run each correlation and save as a variable
  cross <- seascorr(cross_chron, gm_clim)
  smith <- seascorr(smith_chron, gm_clim)
  kimba <- seascorr(kimball_chron, gm_clim)

## Plot the correlations 
  plot(cross)
  plot(smith)
  plot(kimba)

## END ##
