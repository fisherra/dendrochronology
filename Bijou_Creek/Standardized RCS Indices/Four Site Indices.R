#########################################################
##                      Bijou Creek                    ##
##           Downstream Indices Based on BB            ##
#########################################################

## Fisher Ankney
## fisherankney@gmail.com
## March 3, 2017

## Load Sources
indices <- standardized_rcs_indices

## Clear old plots if necissary - 
dev.off()

## Create a new plot 'canvas'
par(mar=c(5,4,4,10), xpd=FALSE)
plot(indices$year, indices$bb_avg,
     main = "Bijou Creek RCS Indices",
     xlab="Year", ylab = "Index Value",
     xaxt="n", yaxt="n", xaxs="i", yaxs="i",
     xlim = c(1820,2015), ylim = c(0,2), 
     type="o", lty=1, lwd = 2,
     pch=20, cex=1,
     col = "violet"
)

abline(h=1, col="black", lty='dotted')

lines(indices$year, indices$b3_avg,
      type="o", col = "turquoise",
      pch=19, cex=1, lwd=2
      )

lines(indices$year, indices$b9_avg,
      type="o", col = "slateblue",
      pch=19, cex=1, lwd=2
)
lines(indices$year, indices$b12_avg,
      type="o", col = "seagreen3",
      pch=19, cex=1, lwd=2
)

legend('topright',
       legend=c("Open Space Indices", "Bradbury Indices", "MaClennon Indices", "Hutto Indices"),
       col = c("violet", "turquoise", "seagreen", "slateblue"),
       pch=c(20, 20, 20, 20, 20),
       bty="n"
)

axis(side=1, at=seq(1820,2015,1),lwd=1, las=1, labels=FALSE)
axis(side=1, at=seq(1820,2015,5),lwd=2)
axis(side=2, at=seq(0,2,0.5), lwd=1, las = 1)



## Smoothed RCS INDICES ###################################

dev.off()

## Create a new plot 'canvas'
par(mar=c(5,4,4,10), xpd=FALSE)
plot(indices$year, indices$bb_avg,
     main = "Bijou Creek Smoothed RCS Indices",
     xlab="Year", ylab = "Index Value",
     xaxt="n", yaxt="n", xaxs="i", yaxs="i",
     xlim = c(1820,2015), ylim = c(0,2), 
     type="o", lty=1, lwd = 2,
     pch=20, cex=1.5,
     col = ""
)
abline(h=1, col="black", lty='dotted')
lines(lowess(indices$year, indices$bb_avg, f = 0.3), col="violet", lty='twodash', lwd=2) # lowess line (x,y)
lines(lowess(indices$year, indices$b3_avg, f = 0.3), col="turquoise", lty='twodash', lwd=2) # lowess line (x,y)
lines(lowess(indices$year, indices$b12_avg, f = 0.3), col="seagreen3", lty='twodash', lwd=2) # lowess line (x,y)
lines(lowess(indices$year, indices$b9_avg, f = 0.3), col="slateblue", lty='twodash', lwd=2) # lowess line (x,y)

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