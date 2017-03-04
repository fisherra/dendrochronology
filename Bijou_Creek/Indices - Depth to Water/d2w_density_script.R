#########################################################
##              Bijou Creek Indices - D2W              ##
##                    Density Plots                    ##
#########################################################

## Fisher Ankney
## fisherankney@gmail.com
## 2/18/2017

## Density plot of all relevant depth to water variables
src <- source
dev.off()

## D2W
plot(main="Depth to Water Table Density",
     density(src$d2w, na.rm=TRUE),
     xlim=c(0,10),
     xlab="Depth to Water Table (m)",
     ylab="Fraction of Trees"
)

## DBH 
plot(main="Diameter Base Height Density",
     density(src$dbh, na.rm=TRUE),
     xlab="Diameter Base Height (cm)",
     ylab="Fraction of Trees"
)

## HEIGHT
plot(main="Height Density",
     density(src$height, na.rm=TRUE),
     xlim=c(0,25),
     xlab="Height (m)",
     ylab="Fraction of Trees"
)

## VIGOR 
plot(main="Vigor Density",
     density(src$vigor, na.rm=TRUE),
     xlab="Observed Percent Vigor",
     ylab="Fraction of Trees",
     xlim=c(0,100)
)

## ESTABLISHMENT YEAR
plot(main="Establishment Year Density",
     density(src$est_year, na.rm=TRUE),
     xlab="Establishment Year",
     ylab="Fraction of Trees",
     xlim=c(1800, 2015)
)

## END

