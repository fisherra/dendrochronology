#################################################################
##                            Bijou Creek                      ##     
##              Old Establish & Cliamte Correlation            ##     
#################################################################

## Fisher Ankney
## March 3, 2017
## fisherankney@gmail.com

## Data is taken from old tree estabishment and pdsi
oti <- old_establish_source
pdsi <- pdsi_source

## Check for correlations

bb_ind_1 <- cor.test(oti$BB_ind_avg, pdsi$source1)
bb_ind_2 <- cor.test(oti$BB_ind_avg, pdsi$source2)
bb_ind_3 <- cor.test(oti$BB_ind_avg, pdsi$source3)
bb_ind_4 <- cor.test(oti$BB_ind_avg, pdsi$source4)

b3_ind_1 <- cor.test(oti$B3_ind_avg, pdsi$source1)
b3_ind_2 <- cor.test(oti$B3_ind_avg, pdsi$source2)
b3_ind_3 <- cor.test(oti$B3_ind_avg, pdsi$source3)
b3_ind_4 <- cor.test(oti$B3_ind_avg, pdsi$source4)

b9_ind_1 <- cor.test(oti$B9_ind_avg, pdsi$source1)
b9_ind_2 <- cor.test(oti$B9_ind_avg, pdsi$source2)
b9_ind_3 <- cor.test(oti$B9_ind_avg, pdsi$source3)
b9_ind_4 <- cor.test(oti$B9_ind_avg, pdsi$source4)

b12_ind_1 <- cor.test(oti$B12_ind_avg, pdsi$source1)
b12_ind_2 <- cor.test(oti$B12_ind_avg, pdsi$source2)
b12_ind_3 <- cor.test(oti$B12_ind_avg, pdsi$source3)
b12_ind_4 <- cor.test(oti$B12_ind_avg, pdsi$source4)

# organize the results

correlations < c("BB PDSI1", bb_ind_1$estimate, bb_ind_1$p.value,
                 "BB PDSI2", bb_ind_2$estimate, bb_ind_2$p.value,
                 "BB PDSI3", bb_ind_3$estimate, bb_ind_3$p.value, 
                 "BB PDSI4", bb_ind_4$estiamte, bb_ind_4$p.value, 
                 
                 "B3 PDSI1", b3_ind_1$estimate, b3_ind_1$p.value,
                 "B3 PDSI2", b3_ind_2$estimate, b3_ind_2$p.value,
                 "B3 PDSI3", b3_ind_3$estimate, b3_ind_3$p.value, 
                 "B3 PDSI4", b3_ind_4$estiamte, b3_ind_4$p.value, 
                 
                 "B9 PDSI1", b9_ind_1$estimate, b9_ind_1$p.value,
                 "B9 PDSI2", b9_ind_2$estimate, b9_ind_2$p.value,
                 "B9 PDSI3", b9_ind_3$estimate, b9_ind_3$p.value, 
                 "B9 PDSI4", b9_ind_4$estiamte, b9_ind_4$p.value, 
                 
                 "B12 PDSI1", b12_ind_1$estimate, b12_ind_1$p.value,
                 "B12 PDSI2", b12_ind_2$estimate, b12_ind_2$p.value,
                 "B12 PDSI3", b12_ind_3$estimate, b12_ind_3$p.value, 
                 "B12 PDSI4", b12_ind_4$estiamte, b12_ind_4$p.value, 
)

# print out the correlation coefficients and p-values
print(correlations)
