#################################################################
##                  Greater Missouri River                     ##     
##                Pre-Dam Climate Correlations                 ##     
#################################################################

## Fisher Ankney
## February 24, 2017
## fisherankney@gmail.com


## dplyr library is necissary for this script to run, be sure install it
#install.packages('dplyr')
library(dplyr)

## Load datafiles here
clim_corr <- as.data.frame(Climate_Correlations)
clim_corr <- (clim_corr[c(seq(1,25,by=1)),])


# PDSI, monthly mean max temperature, and monthly mean flow must be weighted by the number of days
# present in each month.

# 5 month weights
apr.weight.5 <- 30/153; # 30 days in april / 153 days in the 5 months total
may.weight.5 <- 31/153; # 31 days in may / 153 days
jun.weight.5 <- 30/153; # 30 days in june / 153 days
jul.weight.5 <- 31/153; # 31 days in july / 153 days 
aug.weight.5 <- 31/153; # 31 days in august / 153 days

# 4 month weights (4.1)
apr.weight.4.1 <- 30/122; # 122 days total in april, may, june, july 
may.weight.4.1 <- 31/122;
jun.weight.4.1 <- 30/122;
jul.weight.4.1 <- 31/122;

# 4 month weights (4.2)
may.weight.4.2 <- 31/123; # 123 days total in may, june, july, august
jun.weight.4.2 <- 30/123;
jul.weight.4.2 <- 31/123; 
aug.weight.4.2 <- 31/123;

# 3 month weights (3.1)
apr.weight.3.1 <- 30/91; # 91 days total in april, may, june
may.weight.3.1 <- 31/91; 
jun.weight.3.1 <- 30/91;

# 3 month weights (3.2)
may.weight.3.2 <- 31/92; # 92 days total in may, june, july 
jun.weight.3.2 <- 30/92; 
jul.weight.3.2 <- 31/92;

# 3 month weights (3.3)
jun.weight.3.3 <- 30/92; # 92 days total in june, july, august 
jul.weight.3.3 <- 31/92;
aug.weight.3.3 <- 31/92;


# 5 Sums & Means - April, May, June, July, August
clim_corr <- mutate(clim_corr,                            
                    prec.sum.5 = (prec.apr + prec.may + 
                                    prec.jun + prec.jul + 
                                    prec.aug),                # sum the precipitation april - august
                    flow.apr.5 = flow.apr * apr.weight.5,     # weight the april flow
                    flow.may.5 = flow.may * may.weight.5,     # weight the may flow
                    flow.jun.5 = flow.jun * jun.weight.5,     # weight the june flow
                    flow.jul.5 = flow.jul * jul.weight.5,     # weight the july flow
                    flow.aug.5 = flow.aug * aug.weight.5,     # weight the august flow 
                    flow.mean.5 = (flow.apr.5 + flow.may.5 +  
                                     flow.jun.5 + flow.jul.5 + 
                                     flow.aug.5),            # sum the weighted mean flows (apr - aug)
                    pdsi.apr.5 = pdsi.apr * apr.weight.5,    
                    pdsi.may.5 = pdsi.may * may.weight.5,
                    pdsi.jun.5 = pdsi.jun * jun.weight.5, 
                    pdsi.jul.5 = pdsi.jul * jul.weight.5,
                    pdsi.aug.5 = pdsi.aug * aug.weight.5,
                    pdsi.mean.5 = (pdsi.apr.5 + pdsi.may.5 + 
                                     pdsi.jun.5 + pdsi.jul.5 + 
                                     pdsi.aug.5),           # sum the weighted mean PDSI (apr - aug)
                    temp.apr.5 = temp.apr * apr.weight.5,
                    temp.may.5 = temp.may * may.weight.5,
                    temp.jun.5 = temp.jun * jun.weight.5, 
                    temp.jul.5 = temp.jul * jul.weight.5,
                    temp.aug.5 = temp.aug * aug.weight.5,
                    temp.mean.5 =  (temp.apr.5 + temp.may.5 + 
                                      temp.jun.5 + temp.jul.5 + 
                                      temp.aug.5)          # sum the weighted mean temp (apr - aug)
		   )

## Repeat the above calculation for each grouping of months

# 4.1 Sums and Means - April, May, June, July
clim_corr <- mutate(clim_corr,
                    prec.sum.4.1 = (prec.apr + prec.may + 
                                      prec.jun + prec.jul),
                    flow.apr.4.1 = flow.apr * apr.weight.4.1,
                    flow.may.4.1 = flow.may * may.weight.4.1,
                    flow.jun.4.1 = flow.jun * jun.weight.4.1, 
                    flow.jul.4.1 = flow.jul * jul.weight.4.1,
                    flow.mean.4.1 = (flow.apr.4.1 + flow.may.4.1 + 
                                       flow.jun.4.1 + flow.jul.4.1),
                    pdsi.apr.4.1 = pdsi.apr * apr.weight.4.1,
                    pdsi.may.4.1 = pdsi.may * may.weight.4.1,
                    pdsi.jun.4.1 = pdsi.jun * jun.weight.4.1, 
                    pdsi.jul.4.1 = pdsi.jul * jul.weight.4.1,
                    pdsi.mean.4.1 = (pdsi.apr.4.1 + pdsi.may.4.1 + 
                                       pdsi.jun.4.1 + pdsi.jul.4.1),
                    temp.apr.4.1 = temp.apr * apr.weight.4.1,
                    temp.may.4.1 = temp.may * may.weight.4.1,
                    temp.jun.4.1 = temp.jun * jun.weight.4.1, 
                    temp.jul.4.1 = temp.jul * jul.weight.4.1,
                    temp.mean.4.1 =  (temp.apr.4.1 + temp.may.4.1 + 
                                        temp.jun.4.1 + temp.jul.4.1)
		   )

# 4.2 Sums & Means - May, June, July, August
clim_corr <- mutate(clim_corr,
                    prec.sum.4.2 = (prec.may + prec.jun + 
                                      prec.jul + prec.aug),
                    flow.may.4.2 = flow.may * may.weight.4.2,
                    flow.jun.4.2 = flow.jun * jun.weight.4.2, 
                    flow.jul.4.2 = flow.jul * jul.weight.4.2,
                    flow.aug.4.2 = flow.aug * aug.weight.4.2,
                    flow.mean.4.2 = (flow.may.4.2 + flow.jun.4.2 + 
                                       flow.jul.4.2 + flow.aug.4.2),
                    pdsi.may.4.2 = pdsi.may * may.weight.4.2,
                    pdsi.jun.4.2 = pdsi.jun * jun.weight.4.2, 
                    pdsi.jul.4.2 = pdsi.jul * jul.weight.4.2,
                    pdsi.aug.4.2 = pdsi.aug * aug.weight.4.2,
                    pdsi.mean.4.2 = (pdsi.may.4.2 + pdsi.jun.4.2 + 
                                       pdsi.jul.4.2 + pdsi.aug.4.2),
                    temp.may.4.2 = temp.may * may.weight.4.2,
                    temp.jun.4.2 = temp.jun * jun.weight.4.2, 
                    temp.jul.4.2 = temp.jul * jul.weight.4.2,
                    temp.aug.4.2 = temp.aug * aug.weight.4.2,
                    temp.mean.4.2 =  (temp.may.4.2 + temp.jun.4.2 + 
                                        temp.jul.4.2 + temp.aug.4.2)
		   )

# 3.1 Sums & Means - April, May, June
clim_corr <- mutate(clim_corr,
                    prec.sum.3.1 = (prec.apr + prec.may + 
                                      prec.jun),
                    flow.apr.3.1 = flow.apr * apr.weight.3.1, 
                    flow.may.3.1 = flow.may * may.weight.3.1,
                    flow.jun.3.1 = flow.jun * jun.weight.3.1, 
                    flow.mean.3.1 = (flow.apr.3.1 + flow.may.3.1 + 
                                       flow.jun.3.1),
                    pdsi.apr.3.1 = pdsi.apr * apr.weight.3.1,
                    pdsi.may.3.1 = pdsi.may * may.weight.3.1,
                    pdsi.jun.3.1 = pdsi.jun * jun.weight.3.1, 
                    pdsi.mean.3.1 = (pdsi.apr.3.1 + pdsi.may.3.1 +
                                       pdsi.jun.3.1),
                    temp.apr.3.1 = temp.apr * apr.weight.3.1,
                    temp.may.3.1 = temp.may * may.weight.3.1,
                    temp.jun.3.1 = temp.jun * jun.weight.3.1, 
                    temp.mean.3.1 =  (temp.apr.3.1 + temp.may.3.1 + 
                                        temp.jun.3.1) 
		   )              

# 3.2 Sums & Means - May, June, July
clim_corr <- mutate(clim_corr,
                    prec.sum.3.2 = (prec.may + prec.jun + 
                                      prec.jul),
                    flow.may.3.2 = flow.may * may.weight.3.2,
                    flow.jun.3.2 = flow.jun * jun.weight.3.2, 
                    flow.jul.3.2 = flow.jul * jul.weight.3.2, 
                    flow.mean.3.2 = (flow.may.3.2 + flow.jun.3.2 + 
                                       flow.jul.3.2),
                    pdsi.may.3.2 = pdsi.may * may.weight.3.2,
                    pdsi.jun.3.2 = pdsi.jun * jun.weight.3.2, 
                    pdsi.jul.3.2 = pdsi.jul * jul.weight.3.2,
                    pdsi.mean.3.2 = (pdsi.may.3.2 + pdsi.jun.3.2 +
                                       pdsi.jul.3.2),
                    temp.may.3.2 = temp.may * may.weight.3.2,
                    temp.jun.3.2 = temp.jun * jun.weight.3.2, 
                    temp.jul.3.2 = temp.jul * jul.weight.3.2,
                    temp.mean.3.2 =  (temp.may.3.2 + temp.jun.3.2 + 
                                        temp.jul.3.2) 
		   ) 

# 3.3 Sums & Means - June, July, August
clim_corr <- mutate(clim_corr,
                    prec.sum.3.3 = (prec.jun + prec.jul + 
                                      prec.aug),
                    flow.jun.3.3 = flow.jun * jun.weight.3.3,
                    flow.jul.3.3 = flow.jul * jul.weight.3.3, 
                    flow.aug.3.3 = flow.aug * aug.weight.3.3, 
                    flow.mean.3.3 = (flow.jun.3.3 + flow.jul.3.3 + 
                                       flow.aug.3.3),
                    pdsi.jun.3.3 = pdsi.jun * jun.weight.3.3,
                    pdsi.jul.3.3 = pdsi.jul * jul.weight.3.3, 
                    pdsi.aug.3.3 = pdsi.aug * aug.weight.3.3,
                    
                    pdsi.mean.3.3 = (pdsi.jun.3.3 + pdsi.jul.3.3 +
                                       pdsi.aug.3.3),
                    temp.jun.3.3 = temp.jun * jun.weight.3.3,
                    temp.jul.3.3 = temp.jul * jul.weight.3.3, 
                    temp.aug.3.3 = temp.aug * aug.weight.3.3,
                    temp.mean.3.3 =  (temp.jun.3.3 + temp.jul.3.3 + 
                                        temp.aug.3.3) 
		   ) 

# Evaluate Precipitation Relationships 
## Cross Ranch
prec_cross_apr_aug <- cor.test(clim_corr$cross.std, clim_corr$prec.sum.5)
prec_cross_apr_jul <- cor.test(clim_corr$cross.std, clim_corr$prec.sum.4.1)
prec_cross_may_aug <- cor.test(clim_corr$cross.std, clim_corr$prec.sum.4.2)
prec_cross_apr_jun <- cor.test(clim_corr$cross.std, clim_corr$prec.sum.3.1)
prec_cross_may_jul <- cor.test(clim_corr$cross.std, clim_corr$prec.sum.3.2)
prec_cross_jun_aug <- cor.test(clim_corr$cross.std, clim_corr$prec.sum.3.3)
## Smith Grove
prec_smith_apr_aug <- cor.test(clim_corr$smith.std, clim_corr$prec.sum.5)
prec_smith_apr_jul <- cor.test(clim_corr$smith.std, clim_corr$prec.sum.4.1)
prec_smith_may_aug <- cor.test(clim_corr$smith.std, clim_corr$prec.sum.4.2)
prec_smith_apr_jun <- cor.test(clim_corr$smith.std, clim_corr$prec.sum.3.1)
prec_smith_may_jul <- cor.test(clim_corr$smith.std, clim_corr$prec.sum.3.2)
prec_smith_jun_aug <- cor.test(clim_corr$smith.std, clim_corr$prec.sum.3.3)

precip_correlations_summarized <- c(prec_cross_apr_aug$estimate, prec_cross_apr_jul$estimate,
                                    prec_cross_may_aug$estimate, prec_cross_apr_jun$estimate,
                                    prec_cross_may_jul$estimate, prec_cross_jun_aug$estimate,
                                    prec_smith_apr_aug$estimate, prec_smith_apr_jul$estimate,
                                    prec_smith_may_aug$estimate, prec_smith_apr_jun$estimate, 
                                    prec_smith_may_jul$estimate, prec_smith_jun_aug$estimate
                      		   )

precip_p.value_summarized <- c(prec_cross_apr_aug$p.value, prec_cross_apr_jul$p.value,
                               prec_cross_may_aug$p.value, prec_cross_apr_jun$p.value,
                               prec_cross_may_jul$p.value, prec_cross_jun_aug$p.value,
                               prec_smith_apr_aug$p.value, prec_smith_apr_jul$p.value,
                               prec_smith_may_aug$p.value, prec_smith_apr_jun$p.value, 
                               prec_smith_may_jul$p.value, prec_smith_jun_aug$p.value
		  	      )
  
# Evaluate Flow Relationships 
## Cross Ranch
flow_cross_apr_aug <- cor.test(clim_corr$cross.std, clim_corr$flow.mean.5)
flow_cross_apr_jul <- cor.test(clim_corr$cross.std, clim_corr$flow.mean.4.1)
flow_cross_may_aug <- cor.test(clim_corr$cross.std, clim_corr$flow.mean.4.2)
flow_cross_apr_jun <- cor.test(clim_corr$cross.std, clim_corr$flow.mean.3.1)
flow_cross_may_jun <- cor.test(clim_corr$cross.std, clim_corr$flow.mean.3.2)
flow_cross_jun_aug <- cor.test(clim_corr$cross.std, clim_corr$flow.mean.3.3)
## Smith Grove
flow_smith_apr_aug <- cor.test(clim_corr$smith.std, clim_corr$flow.mean.5)
flow_smith_apr_jul <- cor.test(clim_corr$smith.std, clim_corr$flow.mean.4.1)
flow_smith_may_aug <- cor.test(clim_corr$smith.std, clim_corr$flow.mean.4.2)
flow_smith_apr_jun <- cor.test(clim_corr$smith.std, clim_corr$flow.mean.3.1)
flow_smith_may_jul <- cor.test(clim_corr$smith.std, clim_corr$flow.mean.3.2)
flow_smith_jun_aug <- cor.test(clim_corr$smith.std, clim_corr$flow.mean.3.3)

flow_correlation_summarized <- c(flow_cross_apr_aug$estimate, flow_cross_apr_jul$estimate, flow_cross_may_aug$estimate,
                                 flow_cross_apr_jun$estimate, flow_cross_may_jul$estimate, flow_cross_jun_aug$estimate,
                                 flow_smith_apr_aug$estimate, flow_smith_apr_jul$estimate, flow_smith_may_aug$estimate,
                                 flow_smith_apr_jun$estimate, flow_smith_may_jul$estimate, flow_smith_jun_aug$estimate
                      	        )

flow_p.value_summarized <-   c(flow_cross_apr_aug$p.value, flow_cross_apr_jul$p.value, flow_cross_may_aug$p.value,
                               flow_cross_apr_jun$p.value, flow_cross_may_jul$p.value, flow_cross_jun_aug$p.value,
                               flow_smith_apr_aug$p.value, flow_smith_apr_jul$p.value, flow_smith_may_aug$p.value,
                               flow_smith_apr_jun$p.value, flow_smith_may_jul$p.value, flow_smith_jun_aug$p.value
                              )

# Evaluate Temperature Relationships 
## Cross Ranch
temp_cross_apr_aug <- cor.test(clim_corr$cross.std, clim_corr$temp.mean.5)
temp_cross_apr_jul <- cor.test(clim_corr$cross.std, clim_corr$temp.mean.4.1)
temp_cross_may_aug <- cor.test(clim_corr$cross.std, clim_corr$temp.mean.4.2)
temp_cross_apr_jun <- cor.test(clim_corr$cross.std, clim_corr$temp.mean.3.1)
temp_cross_may_jul <- cor.test(clim_corr$cross.std, clim_corr$temp.mean.3.2)
temp_cross_jun_aug <- cor.test(clim_corr$cross.std, clim_corr$temp.mean.3.3)
## Smith Grove
temp_smith_apr_aug <- cor.test(clim_corr$smith.std, clim_corr$temp.mean.5)
temp_smith_apr_jul <- cor.test(clim_corr$smith.std, clim_corr$temp.mean.4.1)
temp_smith_may_aug <- cor.test(clim_corr$smith.std, clim_corr$temp.mean.4.2)
temp_smith_apr_jun <- cor.test(clim_corr$smith.std, clim_corr$temp.mean.3.1)
temp_smith_may_jul <- cor.test(clim_corr$smith.std, clim_corr$temp.mean.3.2)
temp_smith_jun_aug <- cor.test(clim_corr$smith.std, clim_corr$temp.mean.3.3)

temp_correlation_summarized <- c(temp_cross_apr_aug$estimate, temp_cross_apr_jul$estimate, temp_cross_may_aug$estimate,
                                 temp_cross_apr_jun$estimate, temp_cross_may_jul$estimate, temp_cross_jun_aug$estimate,
                                 temp_smith_apr_aug$estimate, temp_smith_apr_jul$estimate, temp_smith_may_aug$estimate,
                                 temp_smith_apr_jun$estimate, temp_smith_may_jul$estimate, temp_smith_jun_aug$estimate
				)

temp_p.value_summarized <- c(temp_cross_apr_aug$p.value, temp_cross_apr_jul$p.value, temp_cross_may_aug$p.value,
                             temp_cross_apr_jun$p.value, temp_cross_may_jul$p.value, temp_cross_jun_aug$p.value,
                             temp_smith_apr_aug$p.value, temp_smith_apr_jul$p.value, temp_smith_may_aug$p.value,
                             temp_smith_apr_jun$p.value, temp_smith_may_jul$p.value, temp_smith_jun_aug$p.value
			    )
  
# Evaluate PDSI Relationships 
## Cross Ranch
pdsi_cross_apr_aug <- cor.test(clim_corr$cross.std, clim_corr$pdsi.mean.5)
pdsi_cross_apr_jul <- cor.test(clim_corr$cross.std, clim_corr$pdsi.mean.4.1)
pdsi_cross_may_aug <- cor.test(clim_corr$cross.std, clim_corr$pdsi.mean.4.2)
pdsi_cross_apr_jun <- cor.test(clim_corr$cross.std, clim_corr$pdsi.mean.3.1)
pdsi_cross_may_jul <- cor.test(clim_corr$cross.std, clim_corr$pdsi.mean.3.2)
pdsi_cross_jun_aug <- cor.test(clim_corr$cross.std, clim_corr$pdsi.mean.3.3)

# By Individual Month
pdsi.jan.cross <- cor.test(clim_corr$cross.std, clim_corr$pdsi.jan)
pdsi.feb.cross <- cor.test(clim_corr$cross.std, clim_corr$pdsi.feb)
pdsi.mar.cross <- cor.test(clim_corr$cross.std, clim_corr$pdsi.mar)
pdsi.apr.cross <- cor.test(clim_corr$cross.std, clim_corr$pdsi.apr)
pdsi.may.cross <- cor.test(clim_corr$cross.std, clim_corr$pdsi.may)
pdsi.jun.cross <- cor.test(clim_corr$cross.std, clim_corr$pdsi.jun)
pdsi.jul.cross <- cor.test(clim_corr$cross.std, clim_corr$pdsi.jul)
pdsi.aug.cross <- cor.test(clim_corr$cross.std, clim_corr$pdsi.aug)
pdsi.sep.cross <- cor.test(clim_corr$cross.std, clim_corr$pdsi.sep)
pdsi.oct.cross <- cor.test(clim_corr$cross.std, clim_corr$pdsi.oct)
pdsi.nov.cross <- cor.test(clim_corr$cross.std, clim_corr$pdsi.nov)
pdsi.dec.cross <- cor.test(clim_corr$cross.std, clim_corr$pdsi.dec)

## Smith Grove
pdsi_smith_apr_aug <- cor.test(clim_corr$smith.std, clim_corr$pdsi.mean.5)
pdsi_smith_apr_jul <- cor.test(clim_corr$smith.std, clim_corr$pdsi.mean.4.1)
pdsi_smith_may_aug <- cor.test(clim_corr$smith.std, clim_corr$pdsi.mean.4.2)
pdsi_smith_apr_jun <- cor.test(clim_corr$smith.std, clim_corr$pdsi.mean.3.1)
pdsi_smith_may_jul <- cor.test(clim_corr$smith.std, clim_corr$pdsi.mean.3.2)
pdsi_smith_jun_aug <- cor.test(clim_corr$smith.std, clim_corr$pdsi.mean.3.3)

# By Individual Month
pdsi.jan.smith <- cor.test(clim_corr$smith.std, clim_corr$pdsi.jan)
pdsi.feb.smith <- cor.test(clim_corr$smith.std, clim_corr$pdsi.feb)
pdsi.mar.smith <- cor.test(clim_corr$smith.std, clim_corr$pdsi.mar)
pdsi.apr.smith <- cor.test(clim_corr$smith.std, clim_corr$pdsi.apr)
pdsi.may.smith <- cor.test(clim_corr$smith.std, clim_corr$pdsi.may)
pdsi.jun.smith <- cor.test(clim_corr$smith.std, clim_corr$pdsi.jun)
pdsi.jul.smith <- cor.test(clim_corr$smith.std, clim_corr$pdsi.jul)
pdsi.aug.smith <- cor.test(clim_corr$smith.std, clim_corr$pdsi.aug)
pdsi.sep.smith <- cor.test(clim_corr$smith.std, clim_corr$pdsi.sep)
pdsi.oct.smith <- cor.test(clim_corr$smith.std, clim_corr$pdsi.oct)
pdsi.nov.smith <- cor.test(clim_corr$smith.std, clim_corr$pdsi.nov)
pdsi.dec.smith <- cor.test(clim_corr$smith.std, clim_corr$pdsi.dec)

pdsi_correlation_summarized <- c(pdsi_cross_apr_aug$estimate, pdsi_cross_apr_jul$estimate, pdsi_cross_may_aug$estimate,
                                 pdsi_cross_apr_jun$estimate, pdsi_cross_may_jul$estimate, pdsi_cross_jun_aug$estimate,
                                 pdsi_smith_apr_aug$estimate, pdsi_smith_apr_jul$estimate, pdsi_smith_may_aug$estimate,
                                 pdsi_smith_apr_jun$estimate, pdsi_smith_may_jul$estimate, pdsi_smith_jun_aug$estimate
                                )

pdsi_p.value_summarized <- c(pdsi_cross_apr_aug$p.value, pdsi_cross_apr_jul$p.value, pdsi_cross_may_aug$p.value,
                             pdsi_cross_apr_jun$p.value, pdsi_cross_may_jul$p.value, pdsi_cross_jun_aug$p.value,
                             pdsi_smith_apr_aug$p.value, pdsi_smith_apr_jul$p.value, pdsi_smith_may_aug$p.value,
                             pdsi_smith_apr_jun$p.value, pdsi_smith_may_jul$p.value, pdsi_smith_jun_aug$p.value
                            )

pdsi_correlation_individual_cross <- c(pdsi.jan.cross$estimate, pdsi.feb.cross$estimate, pdsi.mar.cross$estimate,
                                       pdsi.apr.cross$estimate, pdsi.may.cross$estimate, pdsi.jun.cross$estimate,
                                       pdsi.jul.cross$estimate, pdsi.aug.cross$estimate, pdsi.sep.cross$estimate,
                                       pdsi.oct.cross$estimate, pdsi.nov.cross$estimate, pdsi.dec.cross$estimate
                                      )

pdsi_p.value_individual_cross <- c(pdsi.jan.cross$p.value, pdsi.feb.cross$p.value, pdsi.mar.cross$p.value,
                                   pdsi.apr.cross$p.value, pdsi.may.cross$p.value, pdsi.jun.cross$p.value,
                                   pdsi.jul.cross$p.value, pdsi.aug.cross$p.value, pdsi.sep.cross$p.value,
                                   pdsi.oct.cross$p.value, pdsi.nov.cross$p.value, pdsi.dec.cross$p.value
                                  )

pdsi_correlations_individual_smith <- c(pdsi.jan.smith$estimate, pdsi.feb.smith$estimate, pdsi.mar.smith$estimate,
                                        pdsi.apr.smith$estimate, pdsi.may.smith$estimate, pdsi.jun.smith$estimate,
                                        pdsi.jul.smith$estimate, pdsi.aug.smith$estimate, pdsi.sep.smith$estimate,
                                        pdsi.oct.smith$estimate, pdsi.nov.smith$estimate, pdsi.dec.smith$estimate
                                       )   

pdsi_p.value_individual_smith <- c(pdsi.jan.smith$p.value, pdsi.feb.smith$p.value, pdsi.mar.smith$p.value,
                                   pdsi.apr.smith$p.value, pdsi.may.smith$p.value, pdsi.jun.smith$p.value,
                                   pdsi.jul.smith$p.value, pdsi.aug.smith$p.value, pdsi.sep.smith$p.value,
                                   pdsi.oct.smith$p.value, pdsi.nov.smith$p.value, pdsi.dec.smith$p.value
                                  )    

## Print all of the summarized data 

print(precip_correlations_summarized)
print(precip_p.value_summarized)

print(flow_correlation_summarized)
print(flow_p.value_summarized)

print(temp_correlation_summarized)
print(temp_p.value_summarized)

print(pdsi_correlation_summarized)
print(pdsi_p.value_summarized)
print(pdsi_correlation_individual_cross)
print(pdsi_p.value_individual_cross)
print(pdsi_correlations_individual_smith)
print(pdsi_p.value_individual_smith)



### END ### 