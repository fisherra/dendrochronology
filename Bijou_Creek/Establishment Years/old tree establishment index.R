#################################################################
### Bijou Creek Study                                         ###
### site Ratio Plots                                          ###
## Load all the data 
  ratios <- site_ratio_plots

## clear the 'canvas'
#dev.off()

## create a new plot canvas
par(mar=c(5,4,4,10), xpd=FALSE)

## Plot the 3 datasets

  plot(
    old$year, old$BB_avg,
    main = "Old tree cohort index values",
    xlab="Year", ylab = "Index",
    xaxt="n", yaxt="n", xaxs="i", yaxs="i",
    xlim = c(1915,2015), ylim = c(0,3), 
    type="l", lty=1, lwd = 2,
    pch=19, cex=1.2,
    col = "violet"
  )
  
  lines(
    old$year, old$B3_avg,
    type="l", lty=1, lwd=2,
    pch=19, cex=1.2,
    col = "turquoise"
  )
  
  lines(
    old$year, old$B9_avg,
    type="l", lty=1, lwd=2,
    pch=19, cex=1.2,
    col = "seagreen3"
  )
  
  lines(
    old$year, old$B12_avg,
    type="l", lty=1, lwd=2,
    pch=19, cex=1.2,
    col = "slateblue"
  )

## Edit axes
  axis(1, at=seq(1915,2015,5),lwd=2,labels=TRUE)
  axis(1, at=seq(1915,2015,1),lwd=1,labels=FALSE)
    axis(2, at=seq(-2,6,1),lwd=2)

## Edit legend
  legend(
    'topleft',
    legend=c("BB", "B3", "B9", "B12"),
    col = c("violet", "turquoise", "seagreen3", "slateblue"),
    bty="n", lty=1, cex=1, lwd=2)

## END ## 
