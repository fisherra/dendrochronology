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

## BIJOU BASIN INDICES #################################

par(mar=c(5,4,4,10), xpd=FALSE)
plot(indices$year, indices$bb_avg,
     main = "Bijou Basin Master RCS Indices",
     xlab="Year", ylab = "Index Value",
     xaxt="n", yaxt="n", xaxs="i", yaxs="i",
     xlim = c(1820,2015), ylim = c(0,2), 
     type="o", lty=1, lwd = 2,
     pch=20, cex=1.5,
     col = "violet"
)

abline(h=1, col="black", lty='dotted')
lines(lowess(indices$year, indices$bb_avg, f = 0.3), col="violet", lty='twodash', lwd=2) # lowess line (x,y)

axis(side=1, at=seq(1820,2015,1),lwd=1, las=1, labels=FALSE)
axis(side=1, at=seq(1820,2015,5),lwd=2)
axis(side=2, at=seq(0,2,0.5), lwd=1, las = 1)


## BRADBURY INDICES ###################################

par(mar=c(5,4,4,10), xpd=FALSE)
plot(indices$year, indices$b3_avg,
     main = "Bradbury Master RCS Indices",
     xlab="Year", ylab = "Index Value",
     xaxt="n", yaxt="n", xaxs="i", yaxs="i",
     xlim = c(1820,2015), ylim = c(0,2), 
     type="o", lty=1, lwd = 2,
     pch=20, cex=1.5,
     col = "turquoise"
)

abline(h=1, col="black", lty='dotted')
lines(lowess(indices$year, indices$b3_avg, f = 0.3), col="turquoise", lty='twodash', lwd=2) # lowess line (x,y)

axis(side=1, at=seq(1820,2015,1),lwd=1, las=1, labels=FALSE)
axis(side=1, at=seq(1820,2015,5),lwd=2)
axis(side=2, at=seq(0,2,0.5), lwd=1, las = 1)

## MaClennon INDICES ###############################################


par(mar=c(5,4,4,10), xpd=FALSE)
plot(indices$year, indices$b12_avg,
     main = "MaClennon Master RCS Indices",
     xlab="Year", ylab = "Index Value",
     xaxt="n", yaxt="n", xaxs="i", yaxs="i",
     xlim = c(1820,2015), ylim = c(0,2), 
     type="o", lty=1, lwd = 2,
     pch=20, cex=1.5,
     col = "seagreen3"
)
abline(h=1, col="black", lty='dotted')
lines(lowess(indices$year, indices$b12_avg, f = 0.3), col="seagreen3", lty='twodash', lwd=2) # lowess line (x,y)

axis(side=1, at=seq(1820,2015,1),lwd=1, las=1, labels=FALSE)
axis(side=1, at=seq(1820,2015,5),lwd=2)
axis(side=2, at=seq(0,2,0.5), lwd=1, las = 1)


## HUTTO INDICES #############################################

par(mar=c(5,4,4,10), xpd=FALSE)
plot(indices$year, indices$b9_avg,
     main = "Hutto Master RCS Indices",
     xlab="Year", ylab = "Index Value",
     xaxt="n", yaxt="n", xaxs="i", yaxs="i",
     xlim = c(1820,2015), ylim = c(0,2), 
     type="o", lty=1, lwd = 2,
     pch=20, cex=1.5,
     col = "slateblue"
)

abline(h=1, col="black", lty='dotted')
lines(lowess(indices$year, indices$b9_avg, f = 0.3), col="slateblue", lty='twodash', lwd=2) # lowess line (x,y)

axis(side=1, at=seq(1820,2015,1),lwd=1, las=1, labels=FALSE)
axis(side=1, at=seq(1820,2015,5),lwd=2)
axis(side=2, at=seq(0,2,0.5), lwd=1, las = 1)

## END ## 