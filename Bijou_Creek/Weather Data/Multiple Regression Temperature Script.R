###############################################################
### Bijou Creek Analysis                                    ###          
### Multipl Reegression Eastern CO Stations Script          ###
### Temperature Regressions                                 ###
###############################################################
# Created by Fisher Ankney, December 2016 - fisherankney@gmail.com

## Import the weather station data 
  dependent_temp_dataframe <- as.data.frame(dependent_temp) # <-- Enter dependent climate data, 13 column format
  first_temp_dataframe <- as.data.frame(independent_temp) # <-- Enter independent climate data, 13 column format
  second_temp_dataframe <- as.data.frame(independent_temp_2) # <-- Enter independent climate data, 13 column format
  
  ## Adjust for the years you want to calculate  
                                                          ###### Adjust these numbers to fit data
  dependent_temp_dataframe <- (dependent_temp_dataframe[c(seq(1,1000,by=1)),])
  names(byers_temp_dataframe) <- c("year", "dep_jan", "dep_feb", "dep_mar", 
                                   "dep_apr", "dep_may", "dep_jun", "dep_jul",
                                   "dep_aug", "dep_sep", "dep_oct", "dep_nov",
                                   "dep_dec") 
                                                      ###### Adjust these numbers to fit data
  first_temp_dataframe <- (first_temp_dataframe[c(seq(1,1000,by=1)),])
  names(first_temp_dataframe) <- c("year", "ind_jan", "ind_feb", "ind_mar", 
                                   "ind_apr", "ind_may", "ind_jun", "ind_jul",
                                   "ind_aug", "ind_sep", "ind_oct", "ind_nov",
                                   "ind_dec") 
                                                        ###### Adjust these numbers to fit data
  second_temp_dataframe <- (second_temp_dataframe[c(seq(1,1000,by=1)),])
  names(second_temp_dataframe) <- c("year", "ind2_jan", "ind2_feb", "ind2_mar", 
                                    "ind2_apr", "ind2_may", "ind2_jun", "ind2_jul",
                                    "ind2_aug", "ind2_sep", "ind2_oct", "ind2_nov",
                                    "ind2_dec") 

############################## No More Adjustments Needed #############################

## Merge these two dataframes
  partial_dataframe <- merge(dependent_temp_dataframe, first_temp_dataframe)
  combined_dataframe <- merge(partial_dataframe, second_temp_dataframe)

## Run a series of 12 linear regressions
  jan_reg <- lm(dep_jan ~ ind_jan + ind2_jan, data = combined_dataframe)
  feb_reg <- lm(dep_feb ~ ind_feb + ind2_feb, data = combined_dataframe)
  mar_reg <- lm(dep_mar ~ ind_mar + ind2_mar, data = combined_dataframe)
  apr_reg <- lm(dep_apr ~ ind_apr + ind2_apr, data = combined_dataframe)
  may_reg <- lm(dep_may ~ ind_may + ind2_may, data = combined_dataframe)
  jun_reg <- lm(dep_jun ~ ind_jun + ind2_jun, data = combined_dataframe)
  jul_reg <- lm(dep_jul ~ ind_jul + ind2_jul, data = combined_dataframe)
  aug_reg <- lm(dep_aug ~ ind_aug + ind2_aug, data = combined_dataframe)
  sep_reg <- lm(dep_sep ~ ind_sep + ind2_sep, data = combined_dataframe)
  oct_reg <- lm(dep_oct ~ ind_oct + ind2_oct, data = combined_dataframe)
  nov_reg <- lm(dep_nov ~ ind_nov + ind2_nov, data = combined_dataframe)
  dec_reg <- lm(dep_dec ~ ind_dec + ind2_dec, data = combined_dataframe)

## Create summary documents  
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

## The Regressions
  jan_reg
  feb_reg
  mar_reg
  apr_reg
  may_reg
  jun_reg
  jul_reg
  aug_reg
  sep_reg
  oct_reg
  nov_reg
  dec_reg

## These show the R-squared values of each months regression
  print(summarized)
  mean(summarized)
  range(summarized)

## End ##   