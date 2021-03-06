#########################################################
##                      Bijou Creek                    ##
##           Downstream Indices Based on BB            ##
#########################################################

## Fisher Ankney
## fisherankney@gmail.com
## 2/21/2017

## Load Sources
chron_comp  <- standardized_rcs_indices

library(dplyr)
chron_comp <-mutate(dchron_comp, 
                    B3_ind = B3_chron / BB_chron,
                    B9_ind = B9_chron / BB_chron,
                    B12_ind = B12_chron / BB_chron
)

## Clear old plots if necissary - 
dev.off()

## Create a new plot 'canvas'
par(mar=c(5,4,4,10), xpd=FALSE)


plot(chron_comp$year, chron_comp$B3_ind,
     main = "Downstream Indices based on BB (all trees)",
     xlab="Year", ylab = "Index Value",
     xaxt="n", yaxt="n", xaxs="i", yaxs="i",
     xlim = c(1840,2020), ylim = c(0,3), 
     type="o", lty=1, lwd = 2,
     pch=20, cex=1.5,
     col = "turquoise"
)

lines(chron_comp$year, chron_comp$B9_ind,
      col="slateblue", type="o", lwd=2, pch=20, cex=1.5)

lines(chron_comp$year, chron_comp$B12_ind,
      col="seagreen3", type="o", lwd=2, pch=20, cex=1.5)

abline(h=1, col="black")

legend('topright',
       legend=c("Bradbury Indices", "MaClennon Indices", "Hutto Indices"),
       col = c("turquoise", "seagreen", "slateblue"),
       pch=c(20, 20, 20, 20, 20),
       bty="n"
)

axis(side=1, at=seq(1840,2020,1),lwd=1, las=1, labels=FALSE)
axis(side=1, at=seq(1840,2020,5),lwd=2)
axis(side=2, at=seq(0,3,0.5), lwd=1, las = 1)

## END ##
