#########################################################
##               Missouri River Project                ##
##      Chronology & Cliamte Comparison Script         ##
#########################################################

## Fisher Ankney
## fisherankney@gmail.com
## 11/29/2016, updated 2/16/2017

## Load Sources
cccs <- chronology_climate_comparison_source

## Clear old plots if necissary - 
Dev.off()

## Create a new plot 'canvas'
par(mar=c(5,4,4,10), xpd=FALSE)

## Plot the 2 raw chronologies 
plot(cccs$smith.year, cccs$smith.raw,
  main = "Missouri River Chronology & Flow",
  xlab="Year", ylab = "Ring Width",
  xaxt="n", yaxt="n", xaxs="i", yaxs="i",
  xlim = c(1925,2015), ylim = c(0,8), 
  type="o", lty=1, lwd = 2,
  pch=20, cex=1.5,
  col = "red"
)

lines(cccs$cross.year, cccs$cross.raw,
      col="darkgreen", type="o", lwd=2, pch=20)

## Create a legend and label the left and bottom axes
legend('top',
     legend=c("Cross Ranch", "Smith Grove", "Flow"),
     col = c("darkgreen", "red","black"),
     pch=c(20,20,20,20),
     bty="n"
     )

axis(side=1,pos=0,at=seq(1925,2015,5),lwd=1)
axis(side=2,at=seq(0,8,1), lwd=1, las = 1)
axis(side=1,pos=0,at=seq(1925,2015,1), lwd=1, labels=FALSE)

## Plot the flow ontop of the previous graph
par(new=T)
plot(cccs$flow.year, cccs$apr.aug.flow,
     xaxt="n", yaxt="n", xaxs="i", yaxs="i",
     xlab=NA, ylab=NA, axes=FALSE,
     xlim= c(1925,2015), ylim=(c(0,450000)),
     type="o", lty=1, lwd=2, pch=20, cex=1.5,
     col="black")

## Create the flow axes, seperate from the chronologies
axis(side=4, lwd=1)
mtext(side = 4, line = 3, 'Flow (cfs)')  


## END ## 