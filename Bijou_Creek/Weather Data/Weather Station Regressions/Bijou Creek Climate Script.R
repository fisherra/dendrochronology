## Bijou Creek Climate Analysis
## Fisher Ankney fisherankney@gmail.com
## 12/8/2016

precip <- precip_early_r
temp <- temp_early_r

dev.off()




par(mar=c(5,4,4,10), xpd=TRUE)

plot(
  precip$year, precip$byers_adj_precip,
  main = "Precipitation",
  xlab="Year", ylab = "Precipitation Amount (units)",
  xaxt="n", yaxt="n", xaxs="i", yaxs="i",
  xlim = c(1930,2015), ylim = c(-0.01,30.05), 
  type="o", lty=1, lwd = 3,
  pch=20, cex=1.5,
  col = "#000000"
)

lines(
  precip$year, precip$parker_precip,
  type="o", lty=1, lwd=3,
  pch=20, cex=1.5,
  col = "#e86e80"
)

lines(
  precip$year, precip$byers_precip,
  type="o", lty=2, lwd=3,
  pch=20, cex=1.5,
  col = "#66ab8c"
)

axis(1, at=seq(1930,2015,1), lwd=1, labels=FALSE)
axis(1, at=seq(1930,2015,5),lwd=2)
axis(2, at=seq(0,30,1),lwd=1,labels=FALSE)
axis(2, at=seq(0,30,3),lwd=2, las=1)

legend(
  'right', inset=c(-.15,0), 
  legend=c("Byers Adjusted", "Parker", "Byers"),
  col = c("#000000", "#e86e80", "#66ab8c"),
  bty="n", lty=1, cex=1, lwd=2)


############# TEMPERATURE SCRIPTS ##########################

dev.off()

par(mar=c(5,4,4,10), xpd=TRUE)

plot(
  temp$year, temp$summer_mean,
  main = "Summer Temperatures",
  xlab="Year", ylab = "Degrees F",
  xaxt="n", yaxt="n", xaxs="i", yaxs="i",
  xlim = c(1930,2015), ylim = c(0,110), 
  type="l", lty=1, lwd=2,
  pch=20, cex=1.5,
  col = "red"
)

lines(
  temp$year, temp$summer_max,
  type="o",
  #lty=1, lwd=3,
  pch=20, cex=1.5,
  col = "red"
)

lines(
  temp$year, temp$summer_min,
  type="o",
  #lty=2, lwd=3,
  pch=20, cex=1.5,
  col = "red"
)




lines(
  temp$year, temp$fall_max,
  type="p",
  #lty=2, lwd=3,
  pch=20, cex=1.5,
  col = "orange"
)

lines(
  temp$year, temp$winter_max,
  type="p",
  #lty=2, lwd=3,
  pch=20, cex=1.5,
  col = "blue"
)

### MEDIAN ####

lines(
  temp$year, temp$spring_mean,
  type="p",
  #lty=1, lwd=3,
  pch=20, cex=1.5,
  col = "green"
)

lines(
  temp$year, temp$summer_mean,
  type="p",
  #lty=2, lwd=3,
  pch=20, cex=1.5,
  col = "red"
)

lines(
  temp$year, temp$fall_mean,
  type="p",
  #lty=2, lwd=3,
  pch=20, cex=1.5,
  col = "orange"
)

lines(
  temp$year, temp$winter_mean,
  type="p",
  #lty=2, lwd=3,
  pch=20, cex=1.5,
  col = "blue"
)



####### LOW ######################

lines(
  temp$year, temp$spring_min,
  type="p",
  #lty=1, lwd=3,
  pch=20, cex=1.5,
  col = "green"
)

lines(
  temp$year, temp$summer_min,
  type="p",
  #lty=2, lwd=3,
  pch=20, cex=1.5,
  col = "red"
)

lines(
  temp$year, temp$fall_min,
  type="p",
  #lty=2, lwd=3,
  pch=20, cex=1.5,
  col = "orange"
)

lines(
  temp$year, temp$winter_min,
  type="p",
  #lty=2, lwd=3,
  pch=20, cex=1.5,
  col = "blue"
)



axis(1, at=seq(1930,2015,1), lwd=1, labels=FALSE)
axis(1, at=seq(1930,2015,5),lwd=2)
axis(2, at=seq(0,110,2.5),lwd=1,labels=FALSE)
axis(2, at=seq(0,110,10),lwd=2, las=1)

legend(
  'right', inset=c(-.2,0), 
  legend=c("Annual Mean\nMax Summer\nTemperature", "Spring", "Summer", "Fall", "Winter"),
  col = c("black", "green", "red", "orange", "blue"),
  bty="n", lty=1, cex=1, lwd=2)
