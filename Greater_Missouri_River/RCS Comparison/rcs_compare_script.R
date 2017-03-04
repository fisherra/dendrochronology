#########################################################
##               Missouri River Project                ##
##  RCS Comparison Script - GMR Smith/Cross/Kimball    ##
#########################################################

## Fisher Ankney
## fisherankney@gmail.com
## 11/28/2016, updated 2/13/2017

## Load Sources and create a shortcut to the dataset
  rcs_compare <- read_excel("Z:/our/LMR/CottonwoodJuniper/Greater Missouri River/analysis/R/rcs stuff/rcs_compare.xlsx")
  rcs <- rcs_compare

## Clear old plots if necissary 
  dev.off()

## Plot each RCS curve, colored according to site number
  plot(rcs$smith.age, rcs$smith.rcs, 
       xlab="Ring Age (years)", ylab = "Ring Width (cm)", 
       main = "Missouri River RCS Comparison",
       bty="n", xaxt="n", yaxt="n", 
       ylim = c(0,10), xlim = c(0,220),
       col = "darkred", type = "l", lwd=3)
  
  lines(rcs$smith.age, rcs$smith.rcs.mean,
        col="red", type="l", lwd=1)
  
  
  
  lines(rcs$kimball.age, rcs$kimball.rcs.mean,
        col="blue", type="l", lwd=1)
  
  lines(rcs$kimball.age, rcs$kimball.rcs,
        col="darkblue", type="l", lwd=3)
  
  
  
  lines(rcs$cross.age, rcs$cross.rcs,
       col="darkgreen", type="l", lwd=3)
  
  lines(rcs$cross.age, rcs$cross.rcs.smoo,
        col="green", type="l", lwd=1)


## Plot axis & legend
  legend('topright', 
         legend=c("Cross Ranch", "Smith Grove", "Kimball Bottoms"),
         col = c("green", "red", "blue"),
         pch=c(19,19,19), 
         bty="n")
  
  axis(side=1,pos=0, at=seq(0,220,10),lwd=3)
  axis(side=2,pos=0, at=seq(0,10,1), lwd=3, las = 2)
  axis(side=1, pos=0, at=seq(0,220,1), lwd=1, labels=FALSE)

## END ##