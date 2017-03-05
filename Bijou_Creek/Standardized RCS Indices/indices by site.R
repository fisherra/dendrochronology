#########################################################
##                      Bijou Creek                    ##
##           Downstream Indices Based on BB            ##
#########################################################

## Fisher Ankney
## fisherankney@gmail.com
## March 3, 2017

## Load Sources
indices <- standardized_rcs_indices



## BIJOU BASIN INDICES #################################

plot(indices$year, indices$bb_avg,
     main = "Bijou Basin Master RCS Indices",
     xlab="Year", ylab = "Index Value",
     xaxt="n", yaxt="n", xaxs="i", yaxs="i",
     xlim = c(1820,2015), ylim = c(0,2), 
     type="o", lty=1, lwd = 2,
     pch=20, cex=1.5,
     col = "violet"
)

abline(h=1, col="black")
lines(lowess(indices$year, indices$bb_avg, f = 0.3), col="violet", lwd=7) # lowess line (x,y)

axis(side=1, at=seq(1820,2015,1),lwd=1, las=1, labels=FALSE)
axis(side=1, at=seq(1820,2015,5),lwd=2)
axis(side=2, at=seq(0,2,0.5), lwd=1, las = 1)


## BRADBURY INDICES ###################################

plot(indices$year, indices$b3_avg,
     main = "Bradbury Master RCS Indices",
     xlab="Year", ylab = "Index Value",
     xaxt="n", yaxt="n", xaxs="i", yaxs="i",
     xlim = c(1820,2015), ylim = c(0,2), 
     type="o", lty=1, lwd = 2,
     pch=20, cex=1.5,
     col = "turquoise"
)

abline(h=1, col="black")

#abline(lm(indices$b3_avg~indices$year), col="turquoise", lwd=2)
#lines(lowess(indices$year, indices$bb_avg), col="violet", lwd=2) # lowess line (x,y)
lines(lowess(indices$year, indices$b3_avg, f = 0.3), col="turquoise", lwd=7) # lowess line (x,y)

axis(side=1, at=seq(1820,2015,1),lwd=1, las=1, labels=FALSE)
axis(side=1, at=seq(1820,2015,5),lwd=2)
axis(side=2, at=seq(0,2,0.5), lwd=1, las = 1)

## MaClennon INDICES ###############################################

plot(indices$year, indices$b12_avg,
     main = "MaClennon Master RCS Indices",
     xlab="Year", ylab = "Index Value",
     xaxt="n", yaxt="n", xaxs="i", yaxs="i",
     xlim = c(1820,2015), ylim = c(0,2), 
     type="o", lty=1, lwd = 2,
     pch=20, cex=1.5,
     col = "seagreen3"
)

lines(lowess(indices$year, indices$b12_avg, f = 0.3), col="seagreen3", lwd=7) # lowess line (x,y)
abline(h=1, col="black")

axis(side=1, at=seq(1820,2015,1),lwd=1, las=1, labels=FALSE)
axis(side=1, at=seq(1820,2015,5),lwd=2)
axis(side=2, at=seq(0,2,0.5), lwd=1, las = 1)



## HUTTO INDICES #############################################

plot(indices$year, indices$b9_avg,
     main = "Hutto Master RCS Indices",
     xlab="Year", ylab = "Index Value",
     xaxt="n", yaxt="n", xaxs="i", yaxs="i",
     xlim = c(1820,2015), ylim = c(0,2), 
     type="o", lty=1, lwd = 2,
     pch=20, cex=1.5,
     col = "slateblue"
)

lines(lowess(indices$year, indices$b9_avg, f = 0.3), col="slateblue", lwd=7) # lowess line (x,y)
abline(h=1, col="black")

axis(side=1, at=seq(1820,2015,1),lwd=1, las=1, labels=FALSE)
axis(side=1, at=seq(1820,2015,5),lwd=2)
axis(side=2, at=seq(0,2,0.5), lwd=1, las = 1)

## END ## 