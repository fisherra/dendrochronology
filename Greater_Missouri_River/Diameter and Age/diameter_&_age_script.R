#########################################################
##               Missouri River Project                ##
##      Diameter & Age Comparison - GMR/LMR            ##
#########################################################

## Fisher Ankney
## fisherankney@gmail.com
## 11/28/2016, updated 3/4/2017

## Load Sources
diameter_age_source <- read_excel("Z:/our/LMR/CottonwoodJuniper/Greater Missouri River/analysis/R/Diameter & Age/diameter_&_age_source.xlsx")
dataset <- diameter_age_source 

## Clear old plots if necissary - 
Dev.off()

## plot the diameter/age of the GMR dataset
plot(dataset$lmr_age, dataset$lmr_diam,
     xlab="Tree Age (years)", ylab = "Tree Diameter (cm)", 
     bty="n", xaxt="n", yaxt="n", cex.lab =1.25,
     ylim = c(0,230), xlim = c(0,400),
     pch=19, col = "dimgrey", type = "p", cex=1.4
     )

lines(dataset$cross_age, dataset$cross_diam,
      type="p", col = "black", pch=15, cex=1.4)

lines(dataset$kimball_age, dataset$kimball_diam,
      type="p", col = "black", pch=17, cex=1.4)

lines(dataset$smith_age, dataset$smith_diam, 
      type="p", col = "black", pch=19, cex=1.4)

## Plot axis & legend
axis(1, pos=0, at=seq(0,400,20),lwd=2, cex.axis=1.25)
axis(2, pos=0, at=seq(0,230,20),lwd=2, cex.axis=1.25)

legend('topright', legend=c("Cross Ranch", "Smith Grove", "Kimball Bottoms", "Little Missouri River"),
       col = c("black", "black", "black", "dimgrey"), cex=1.15, bty="n", pch=c(15,19,17,19))
