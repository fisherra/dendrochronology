#################################################################
### Bijou Creek Study                                         ###
### number of cores, younger than 'this'                      ###
#################################################################
### Fisher Ankney      fisherankney@gmail.com      1/20/2017


## Load all the data 
number <- rings_all_ARSTAN_outputs_67_spline

## clear the 'canvas'
dev.off()

## create a new plot canvas
par(mar=c(5,4,4,10), xpd=FALSE)

## Plot the 3 datasets
plot(
  number$bb.year, number$bb.num,
  main = "Bijou Creek Core Distribution",
  xlab="Year", ylab = "Number of Cores",
  xaxt="n", yaxt="n", xaxs="i", yaxs="i",
  xlim = c(1840,2015), ylim = c(0,240), 
  type="l", lty=1, lwd = 2,
  pch=19, cex=1.2,
  col = "violet"
)

lines(
  number$b3.year, number$b3.num,
  type="l", lty=1, lwd=2,
  pch=19, cex=1.2,
  col = "turquoise"
)

lines(
  number$b9.year, number$b9.num,
  type="l", lty=1, lwd=2,
  pch=19, cex=1.2,
  col = "seagreen3"
)

lines(
  number$b12.year, number$b12.num,
  type="l", lty=1, lwd=2,
  pch=19, cex=1.2,
  col = "slateblue"
)

## Edit axes
axis(1, at=seq(1840,2015,5),lwd=2,labels=TRUE, las=1)
axis(1, at=seq(1840,2015,1),lwd=1,labels=FALSE)
axis(2, at=seq(0, 240, 20),lwd=2, las=1)

## Edit legend
legend(
  'topleft',
  legend=c("BB", "B3", "B9", "B12"),
  col = c("violet", "turquoise", "slateblue",  "seagreen3"),
  bty="n", lty=1, cex=1, lwd=2)

## END ## 
