#########################################################
##                      Bijou Creek                    ##
##           Downstream Indices Based on BB            ##
#########################################################

## Fisher Ankney
## fisherankney@gmail.com
## 2/21/2017

## Load Sources
indices <- standardized_rcs_indices

## Clear old plots if necissary - 
dev.off()

## Create a new plot 'canvas'
par(mar=c(5,4,4,10), xpd=FALSE)


plot(indices$year, indices$bb_avg,
     main = "Average Indice by Site",
     xlab="Year", ylab = "Index Value",
     xaxt="n", yaxt="n", xaxs="i", yaxs="i",
     xlim = c(1820,2015), ylim = c(0,2), 
     type="p", lty=1, lwd = 2,
     pch=20, cex=1.5,
     col = "white"
)

abline(lm(indices$bb_avg~indices$year), col="violet", lwd=2)
lines(lowess(indices$year, indices$bb_avg), col="violet", lwd=2) # lowess line (x,y)

lines(indices$year, indices$b3_avg,
      col="turquoise", type="o", lwd=2, pch=20, cex=1.5)
abline(lm(indices$b3_avg~indices$year), col="turquoise", lwd=2)
lines(lowess(indices$year, indices$b3_avg), col="turquoise", lwd=2) # lowess line (x,y)

lines(indices$year, indices$b12_avg,
      col="seagreen3", type="o", lwd=2, pch=20, cex=1.5)
abline(lm(indices$b12_avg~indices$year), col="seagreen3", lwd=2)
lines(lowess(indices$year, indices$b12_avg), col="seagreen3", lwd=2) # lowess line (x,y)

lines(indices$year, indices$b9_avg,
      col="slateblue", type="o", lwd=2, pch=20, cex=1.5)
abline(lm(indices$b9_avg~indices$year), col="slateblue", lwd=2)
lines(lowess(indices$year, indices$b9_avg), col="slateblue", lwd=2) # lowess line (x,y)

abline(h=1, col="black")

legend('topright',
      legend=c("Open Space Indices", "Bradbury Indices", "MaClennon Indices", "Hutto Indices"),
       col = c("violet", "turquoise", "seagreen", "slateblue"),
       pch=c(20, 20, 20, 20, 20),
       bty="n"
)

axis(side=1, at=seq(1820,2015,1),lwd=1, las=1, labels=FALSE)
axis(side=1, at=seq(1820,2015,5),lwd=2)
axis(side=2, at=seq(0,2,0.5), lwd=1, las = 1)

## END ##
