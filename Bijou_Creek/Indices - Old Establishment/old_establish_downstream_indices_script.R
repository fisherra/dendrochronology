#########################################################
##           Bijou Creek Indices - Old Tree            ##
##           Downstream Indices Based on BB            ##
#########################################################

## Fisher Ankney
## fisherankney@gmail.com
## 2/21/2017

## Load Sources
oti <- old_establish_source

library(dplyr)
oti <-mutate(oti, 
             B3_ind = B3_chron_avg / BB_chron_avg,
             B9_ind = B9_chron_avg / BB_chron_avg,
             B12_ind = B12_chron_avg / BB_chron_avg
            )

## Clear old plots if necissary - 
dev.off()

## Create a new plot 'canvas'
par(mar=c(5,4,4,10), xpd=FALSE)


plot(oti$year, oti$B3_ind,
     main = "Downstream Indices based on Open Space Chronology (est. 1918 - 1941)",
     xlab="Year", ylab = "Index Value",
     xaxt="n", yaxt="n", xaxs="i", yaxs="i",
     xlim = c(1915,2015), ylim = c(0,4), 
     type="o", lty=1, lwd = 2,
     pch=20, cex=1.5,
     col = "turquoise"
)

lines(oti$year, oti$B9_ind,
      col="slateblue", type="o", lwd=2, pch=20, cex=1.5)

lines(oti$year, oti$B12_ind,
      col="seagreen3", type="o", lwd=2, pch=20, cex=1.5)

abline(h=0, col="black")

legend('topright',
       legend=c("Bradbury Indices", "MaClennon Indices", "Hutto Indices"),
       col = c("turquoise", "seagreen", "slateblue"),
       pch=c(20, 20, 20, 20, 20),
       bty="n"
)


axis(side=1, at=seq(1915,2015,1),lwd=1, las=1, labels = FALSE)
axis(side=1, at=seq(1915,2015,5),lwd=2)
axis(side=2, at=seq(0,4,1), lwd=1, las = 1)

## END ##
