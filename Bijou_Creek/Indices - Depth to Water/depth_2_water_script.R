################################################################
##                          Bijou Creek - D2                  ##
##              		 Indices	              ##
################################################################

## Fisher Ankney
## fisherankney@gmail.com
## February 14th, 2017


## import the data
depth_2_water <- read_excel("Z:/our/GPI/Bijou Creek/analysis/R/Indices Depth To Water Table/depth_2_water.xlsx",sheet = "depth2water_boxplot_source")

## clear previous plots
dev.off()

## Format a new plot
par(mar=c(5,4,4,10), xpd=FALSE)

## Plot the data, organized according to depth

boxplot(d2w$`0.37`, d2w$`1.29`, d2w$`1.5`, d2w$`2`,
        d2w$`2.0699999999999998`, d2w$`2.98`, d2w$`3.25`, d2w$`3.4`,
        d2w$`3.61`, d2w$`3.75`, d2w$`3.84`, d2w$`3.95`, 
        d2w$`4(BB)`, d2w$`4(12)`, d2w$`4.5`, d2w$`4.62`,
        d2w$`5`, d2w$`5.2`, d2w$`5.5`, d2w$`5.77`, 
        d2w$`6.08`, d2w$`8.84`,
        data=d2w,
        col = c("violet", "turquoise", "violet", "turquoise",
                "slateblue", "violet", "slateblue","turquoise",
                "violet", "turquoise", "violet", "turquoise",
                "violet", "slateblue", "turquoise", "slateblue",
                "slateblue", "seagreen3", "seagreen3", "slateblue",
                "seagreen3", "seagreen3"
               ),
        names = c("0.37", "1.29", "1.5", "2",
                  "2.07", "2.98", "3.25", "3.4",
                  "3.61", "3.75", "3.84", "3.95",
                  "4", "4", "4.5", "4.62",
                  "5","5.2", "5.5", "5.77",
                  "6.08", "8.84"
                 ),
        main = "Depth to Water Table vs Growth Index",
        xlab = "Depth to Water Table (meters)",
        ylab = "Growth Index (unitless)"
        )
  

## Plot the data, according to site number

## Clear previous plots
dev.off()

## Format a new plot
par(mar=c(5,4,4,10), xpd=FALSE)



boxplot(d2w$`0.37`, d2w$`1.29`, d2w$`1.5`, d2w$`2`,
        d2w$`2.0699999999999998`, d2w$`2.98`, d2w$`3.25`, d2w$`3.4`,
        d2w$`3.61`, d2w$`3.75`, d2w$`3.84`, d2w$`3.95`,
        d2w$`4(BB)`, d2w$`4(12)`, d2w$`4.5`, d2w$`4.62`,
        d2w$`5`, d2w$`5.2`, d2w$`5.5`, d2w$`5.77`,
        d2w$`6.08`, d2w$`8.84`,
        data=d2w,
        at = c(1, 8, 2, 9,
               15, 3, 16, 10,
               4,11, 5, 12, 6,
               17, 13, 18, 19,
               22, 23, 20, 24,
               25
              ),
        col = c("violet", "turquoise", "violet", "turquoise", 
                "slateblue", "violet", "slateblue", "turquoise",
                "violet", "turquoise", "violet", "turquoise",
                "violet", "slateblue", "turquoise", "slateblue",
                "slateblue", "seagreen3", "seagreen3", "slateblue",
                "seagreen3", "seagreen3"
               ),
        names = c("0.37", "1.29", "1.5", "2",
                  "2.07", "2.98", "3.25", "3.4",
                  "3.61", "3.75", "3.84", "3.95",
                  "4", "4", "4.5", "4.62",
                  "5", "5.2", "5.5", "5.77",
                  "6.08", "8.84"
                 ),
        main = "Depth to Watertable vs Growth Index",
        xlab = "Depth to watertable (meters)",
        ylab = "Growth Index (unitless)"
)
