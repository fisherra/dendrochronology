#########################################################
##               Missouri River Project                ##
##      Chronology & Cliamte Comparison Script         ##
#########################################################

## Fisher Ankney
## fisherankney@gmail.com
## 11/29/2016, updated 2/13/2017

## Load Sources 
  arstan_chron <- arstan_chron


## Clear old plots if necissary
  dev.off()

  ## Plot each of the three chronologies
plot(chroncomp$smith.year, chroncomp$smith.raw, 
     xlab="Calendar Year", ylab = "Ring Width (cm)", 
     main = "Site Chronology Comparison",
     bty="n", xaxt="n", yaxt="n", 
     ylim = c(0,10), xlim = c(1820,2016),
     pch=19, col = "blue", type = "o", lwd=2)

lines(chroncomp$cross.year, chroncomp$cross.raw,
      pch=19, col="darkgreen", type="o", lwd=2)

lines(chroncomp$kim.year, chroncomp$kim.raw,
      pch=19, col="red", type="o", lwd=2)

## create legend and axes
legend('topright',
       legend=c("upstream", "Cross Ranch", "Smith Grove", "Kimball Bottoms","downstream"),
       col = c("white", "green", "red", "blue", "white"), bty="n", pch=c(19,19))

axis(side=1, at=seq(1820,2015,5),lwd=3)
axis(side=2, at=seq(0,10,1), lwd=3, las=2)
axis(side=1, labels=FALSE, at=seq(1930,2015,1),lwd=1)

## Include verticle lines labels and text
abline(v=1953, lwd=3)
text(1948,9.5, "Garrison Dam Closed")
abline(v=1962, lwd=3)
text(1953, 9, "Oahe Dam Closed ----------------------------------")

## END ##