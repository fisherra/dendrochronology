#################################################################
##                       Bijou Creek                           ##     
##              D2W & Indices Correlation Test                 ##     
#################################################################

## Fisher Ankney
## March 3, 2017
## fisherankney@gmail.com

## Data is taken from d2w_source.xls / sources page

d2w <- d2w_source
d2w_30 <- d2w_source_30

## Check for correlations

ind_corr <- cor.test(d2w$d2w, d2w$indice_avg)
# ind_corr_30 <- cor.test(d2w_30$d2w, d2w_30$indice_avg) ## Doesnt seem to be working
dbh_corr <- cor.test(d2w$d2w, d2w$dbh)
height_corr <- cor.test(d2w$d2w, d2w$height)
vig_corr <- cor.test(d2w$d2w, d2w$vigor)
est_corr <- cor.test(d2w$d2w, d2w$est_year)

correlations <- c("indices", ind_corr$estimate, ind_corr$p.value,
                  #"last 30", ind_corr_30$estiate, ind_corr_30$p.value,
                  "dbh", dbh_corr$estimate, dbh_corr$p.value,
                  "height", height_corr$estimate, height_corr$p.value,
                  "vigor", vig_corr$estimate, vig_corr$p.value,
                  "establish", est_corr$estimate, est_corr$p.value)

print(correlations)
