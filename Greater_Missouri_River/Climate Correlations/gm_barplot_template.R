#################################################################
##                  Greater Missouri River                     ##     
##                Pre-Dam Climate Correlations                 ##     
#################################################################

## Fisher Ankney
## February 23, 2017
## fisherankney@gmail.com

### Run either 'early_climate_correlation_script.R' or 'late_climate_correlation_script.R'
### choose one of the commented variables to plot, be sure to adjust the time period in the title





## Precipitation Barplot 

# precip_correlations_summarized
# precip_p.value_summarized

dev.off()
barplot( # insert variable
        main = "Precipitation Correlations (time period)", xlab="Grouping", ylab="Correlation Coefficient",
        ylim=c(0,.5),
        names.arg=c("Apr-Aug C", "Apr-Jul C", "May-Aug C", "Apr-Jun C", "May-Jul C", "Jun-Aug C", 
                    "Apr-Aug S", "Apr-Jul S", "May-Aug S", "Apr-Jun S", "May-Jul S", "Jun-Aug S"
        )
)





## Temperature Barplot

# temp_correlation_summarized
# temp_p.value_summarized

dev.off()
barplot( # insert variable
  main = "Precipitation Correlations (time period)", xlab="Grouping", ylab="Correlation Coefficient",
  ylim=c(0,.5),
  names.arg=c("Apr-Aug C", "Apr-Jul C", "May-Aug C", "Apr-Jun C", "May-Jul C", "Jun-Aug C", 
              "Apr-Aug S", "Apr-Jul S", "May-Aug S", "Apr-Jun S", "May-Jul S", "Jun-Aug S"
  )
)




## Flow Barplot 

# flow_correlation_summarized
# flow_p.value_summarized

dev.off()
barplot( # insert variable
  main = "Precipitation Correlations (time period)", xlab="Grouping", ylab="Correlation Coefficient",
  ylim=c(0,.5),
  names.arg=c("Apr-Aug C", "Apr-Jul C", "May-Aug C", "Apr-Jun C", "May-Jul C", "Jun-Aug C", 
              "Apr-Aug S", "Apr-Jul S", "May-Aug S", "Apr-Jun S", "May-Jul S", "Jun-Aug S"
  )
)




## PDSI Group Barplot 

# pdsi_correlation_summarized
# pdsi_p.value_summarized

dev.off()
barplot( # insert variable
  main = "Precipitation Correlations (time period)", xlab="Grouping", ylab="Correlation Coefficient",
  ylim=c(0,.5),
  names.arg=c("Apr-Aug C", "Apr-Jul C", "May-Aug C", "Apr-Jun C", "May-Jul C", "Jun-Aug C", 
              "Apr-Aug S", "Apr-Jul S", "May-Aug S", "Apr-Jun S", "May-Jul S", "Jun-Aug S"
  )
)



## PDSI Individual Barplot 

# pdsi_correlation_individual_cross
# pdsi_p.value_individual_cross
# pdsi_correlations_individual_smith
# pdsi_p.value_individual_smith

dev.off()
barplot( # insert variable
  main = "Precipitation Correlations (time period)", xlab="Month", ylab="Correlation Coefficient",
  ylim=c(0,.5),
  names.arg=c("Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec")
)

# END #