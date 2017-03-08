###############################################################
### Akron Weather Station Compariso                         ###          
### Bijou Creek Study                                       ###
###############################################################
## Fisher Ankney     January 2016      fisherankney@gmail.com

################### UNDERSTANDING THE Correlation via Linear Regression ########################

## Import the weather station data 
  dependent_dataframe <- as.data.frame(akron_co_temp) 
  independent_dataframe <- as.data.frame(akron_4e_temp)
#  dependent_dataframe <- as.data.frame(akron_co_precip) 
#  independent_dataframe <- as.data.frame(akron_4e_precip) 

                                                     
  dependent_dataframe <- (dependent_dataframe[c(seq(1,200,by=1)),])
  names(dependent_dataframe) <- c("year", "dep_jan", "dep_feb", "dep_mar", 
                            "dep_apr", "dep_may", "dep_jun", "dep_jul",
                            "dep_aug", "dep_sep", "dep_oct", "dep_nov",
                            "dep_dec") 
                                                       
  independent_dataframe <- (independent_dataframe[c(seq(1,200,by=1)),])
  names(independent_dataframe) <- c("year", "ind_jan", "ind_feb", "ind_mar", 
                            "ind_apr", "ind_may", "ind_jun", "ind_jul",
                            "ind_aug", "ind_sep", "ind_oct", "ind_nov",
                            "ind_dec") 
  
## Merge these two dataframes
  combined_dataframe <- merge(dependent_dataframe, independent_dataframe)

## Run a series of 12 linear regressions
  jan_reg <- lm(dep_jan ~ ind_jan, data = combined_dataframe)
  feb_reg <- lm(dep_feb ~ ind_feb, data = combined_dataframe)
  mar_reg <- lm(dep_mar ~ ind_mar, data = combined_dataframe)
  apr_reg <- lm(dep_apr ~ ind_apr, data = combined_dataframe)
  may_reg <- lm(dep_may ~ ind_may, data = combined_dataframe)
  jun_reg <- lm(dep_jun ~ ind_jun, data = combined_dataframe)
  jul_reg <- lm(dep_jul ~ ind_jul, data = combined_dataframe)
  aug_reg <- lm(dep_aug ~ ind_aug, data = combined_dataframe)
  sep_reg <- lm(dep_sep ~ ind_sep, data = combined_dataframe)
  oct_reg <- lm(dep_oct ~ ind_oct, data = combined_dataframe)
  nov_reg <- lm(dep_nov ~ ind_nov, data = combined_dataframe)
  dec_reg <- lm(dep_dec ~ ind_dec, data = combined_dataframe)

## Create an R squared summary  
  summarized <- c(summary(jan_reg)$r.squared, 
                  summary(feb_reg)$r.squared,
                  summary(mar_reg)$r.squared,
                  summary(apr_reg)$r.squared,
                  summary(may_reg)$r.squared,
                  summary(jun_reg)$r.squared,
                  summary(jul_reg)$r.squared,
                  summary(aug_reg)$r.squared,
                  summary(sep_reg)$r.squared,
                  summary(oct_reg)$r.squared,
                  summary(nov_reg)$r.squared,
                  summary(dec_reg)$r.squared
                  )

## Summary Statistics 
  print(summarized)
  mean(summarized)
  range(summarized)

  
########################### PLOTTING THE WEATHER STATIONS #############################
  
## create a new plot canvas
  par(mar=c(5,4,4,10), xpd=FALSE)
  
## Plot the precipitation records
  plot(
    akron_co_precip$year, akron_co_precip$annual,
    main = "Akron Precipitation Comparison",
    xlab="Year", ylab = "Precipitation",
    xaxt="n", yaxt="n", xaxs="i", yaxs="i",
    xlim = c(1900,2015), ylim = c(0,30), 
    type="b", lty=1, lwd = 1.2,
    pch=19, cex=1.5,
    col = "violet"
  )
  
  lines(
    akron_4e_precip$year, akron_4e_precip$annual,
    type="b", lty=1, lwd=1.2,
    pch=19, cex=1.5,
    col = "turquoise"
  )
  

## Edit axes
  axis(1, at=seq(1900,2015,5),lwd=2)
  axis(1, at=seq(1900,2015,1),lwd=1, labels=FALSE)
  axis(2, at=seq(0,30,1),lwd=1)
  
## Edit legend
  legend(
    'topright',
    legend=c("Akron Washington CO AP", "Akron 4E"),
   col = c("violet", "turquoise"),
    bty="n", lty=1, cex=1, lwd=1.2
   )
  
########################### PLOT THE TEMPERATURE DATA ################################
## Reset the canvas
dev.off()

## initalize the canvas
  par(mar=c(5,4,4,10), xpd=FALSE)
  
## Plot the temp dataset
  plot(
    akron_co_temp$year, akron_co_temp$Mean,
    main = "Akron Temperature Comparison",
    xlab="Year", ylab = "Temperature",
    xaxt="n", yaxt="n", xaxs="i", yaxs="i",
    xlim = c(1900,2015), ylim = c(0,100), 
    type="b", lty=1, lwd = 1.2,
    pch=19, cex=1.5,
    col = "violet"
  )
  
  lines(
    akron_4e_temp$year, akron_4e_temp$mean,
    type="b", lty=1, lwd=1.2,
    pch=19, cex=1.5,
    col = "turquoise"
  )

## Compare to Byers
  lines(
    byers_temp$year, byers_temp$mean,
    type="b", lty=1, lwd=1.2,
    pch=19, cex=1.5,
    col = "slateblue"
  )
  
  
  ## Edit axes
  axis(1, at=seq(1900,2015,5),lwd=2)
  axis(1, at=seq(1900,2015,1),lwd=1, labels=FALSE)
  axis(2, at=seq(0,100,1),lwd=1)
  
  ## Edit legend
  legend(
    'topright',
    legend=c("Akron Washington CO AP", "Akron 4E", "Byers"),
    col = c("violet", "turquoise", "slateblue"),
    bty="n", lty=1, cex=1, lwd=1.2
  )

  ######### END ##########