#################################################################
##                       Bijou Creek                           ##     
##            D2W & Indices Correlation by Site                ##     
#################################################################

## Fisher Ankney
## March 8, 2017
## fisherankney@gmail.com

## Data is taken from d2w_source.xls / sources page

d2w <- source_d2w_updated

## Check for correlations using the average indices

bb_test <- cor.test(d2w$bb_d2w, d2w$bb_index)
b3_test <- cor.test(d2w$b3_d2w, d2w$b3_index)
b12_test <- cor.test(d2w$b12_d2w, d2w$b12_index)
b9_test <- cor.test(d2w$b9_d2w, d2w$b9_index)

correlations <- c("Bijou Basin", bb_test$estiamte, bb_test$p.value,
                  "Bradbury", b3_test$estiamte, b3_test$p.value,
                  "MaClennon", b12_test$estimate, b12_test$p.value,
                  "Hutto", b9_test$estimate, b9_test$p.value
)

print(correlations)

## Check for correlations using the indices from the last 30 years only

bb_30_test <- cor.test(d2w$bb_d2w_last, d2w$bb_index_last)
b3_30_test <- cor.test(d2w$b3_d2w_last, d2w$b3_index_last)
b12_30_test <- cor.test(d2w$b12_d2w_last, d2w$b12_index_last)
b9_30_test <- cor.test(d2w$b9_d2w_last, d2w$b9_index_last)

last_30_corr <- c("Bijou Basin", bb_30_test$estiamte, bb_30_test$p.value,
                  "Bradbury", b3_30_test$estiamte, b3_30_test$p.value,
                  "MaClennon", b12_30_test$estimate, b12_30_test$p.value,
                  "Hutto", b9_30_test$estimate, b9_30_test$p.value
)

print(last_30_corr)

## END ##