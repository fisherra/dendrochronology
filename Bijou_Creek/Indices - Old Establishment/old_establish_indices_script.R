#########################################################
##           Bijou Creek Indices - Old Tree            ##
##              4 Site Indices Comparison              ##
#########################################################

## Fisher Ankney
## fisherankney@gmail.com
## 2/21/2017

## Load Sources
oti <- old_establish_source

## Clear old plots if necissary - 
dev.off()

## Create a new plot 'canvas'
par(mar=c(5,4,4,10), xpd=FALSE)

plot(oti$year, oti$BB_ind_avg,
     main = "Old Establishment RCS Indices (est. 1918 - 1941)",
     xlab="Year", ylab = "Index Value",
     xaxt="n", yaxt="n", xaxs="i", yaxs="i",
     xlim = c(1915,2015), ylim = c(0,3), 
     type="o", lty=1, lwd = 2,
     pch=20, cex=1.5,
     col = "violet"
)

lines(oti$year, oti$B3_ind_avg,
      col="turquoise", type="o", lwd=2, pch=20, cex=1.5)

lines(oti$year, oti$B9_ind_avg,
      col="slateblue", type="o", lwd=2, pch=20, cex=1.5)

lines(oti$year, oti$B12_ind_avg,
      col="seagreen3", type="o", lwd=2, pch=20, cex=1.5)


legend('topright',
       legend=c("Open Space", "Bradbury", "MacClennon", "Hutto"),
       col = c("violet", "turquoise", "seagreen3", "slateblue"),
       pch=c(20, 20, 20, 20),
       bty="n"
)

axis(side=1, at=seq(1915,2015,1),lwd=1, las=1)
axis(side=1, at=seq(1915,2015,5),lwd=2, labels=FALSE)
axis(side=2, at=seq(0,3,.25), lwd=1, las = 1)

## END ##
