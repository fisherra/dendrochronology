##############################################################
##                      Bijou Creek Study                   ##
##          Chronologies Correlations with Climate          ##
##############################################################

## Fisher Ankney
## fisherankeny@gmail.com
## March 8th, 2017 

## Load data and packages
chron <- (standardized_rcs_indices[c(seq(109,191,by=1)),])
precip <- (byers_precipitation_source[c(seq(2,84,by=1)),])
temp <- (byers_temperature_source[c(seq(2,84,by=1)),])
scPDSI <- (scPDSI_3_source[c(seq(1,83,by=1)),])
wwdt_pdsi <- (byers_wwdt_pdsi_source[c(seq(2,84,by=1)),])
wwdt_palm <- (byers_wwdt_palmer_zscore_source[c(seq(2,84,by=1)),])

#install.packages('dplyr')
#library(dplyr)

## Weigh precip and temperature
may_weight <- 31/123; 
jun_weight <- 30/123; 
jul_weight <- 31/123; 
aug_weight <- 31/123;

precip <- mutate(precip,
                 prec_sum = (precip$may + precip$jun + 
                               precip$jul + precip$aug)
)

temp <- mutate(temp, 
               temp_may = temp$may * may_weight,
               temp_jun = temp$jun * jun_weight,
               temp_jul = temp$jul * jul_weight,
               temp_aug = temp$aug * aug_weight,
               temp_mean = (temp_may + temp_jun + 
                              temp_jul + temp_aug)
)

## Precipitation Correlations
prec_bb <- cor.test(precip$prec_sum, chron$BB_chron)
prec_b3 <- cor.test(precip$prec_sum, chron$B3_chron)
prec_b9 <- cor.test(precip$prec_sum, chron$B9_chron)
prec_b12 <- cor.test(precip$prec_sum, chron$B12_chron)

## Temperature Correlations
temp_bb <- cor.test(temp$temp_mean, chron$BB_chron)
temp_b3 <- cor.test(temp$temp_mean, chron$B3_chron)
temp_b9 <- cor.test(temp$temp_mean, chron$B9_chron)
temp_b12 <- cor.test(temp$temp_mean, chron$B12_chron)

## scPDSI Correlation
scPDSI_bb <- cor.test(scPDSI$jul, chron$BB_chron)
scPDSI_b3 <- cor.test(scPDSI$jul, chron$B3_chron)
scPDSI_b9 <- cor.test(scPDSI$jul, chron$B9_chron)
scPDSI_b12 <- cor.test(scPDSI$jul, chron$B12_chron)

## wwdt PDSI Correlation
wwdt_pdsi_bb  <- cor.test(wwdt_pdsi$Jul, chron$BB_chron)
wwdt_pdsi_b3  <- cor.test(wwdt_pdsi$Jul, chron$B3_chron)
wwdt_pdsi_b9  <- cor.test(wwdt_pdsi$Jul, chron$B9_chron)
wwdt_pdsi_b12  <- cor.test(wwdt_pdsi$Jul, chron$B12_chron)

## wwdt Palmer Correlation
wwdt_palm_bb <- cor.test(wwdt_palm$Jul, chron$BB_chron)
wwdt_palm_b3 <- cor.test(wwdt_palm$Jul, chron$B3_chron)
wwdt_palm_b9 <- cor.test(wwdt_palm$Jul, chron$B9_chron)
wwdt_palm_b12 <- cor.test(wwdt_palm$Jul, chron$B12_chron)


### END ### 