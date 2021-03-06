################################################################
##                          Bijou Creek                       ##
##              Depth to Watertable & Indices Boxplots        ##
################################################################

## Fisher Ankney
## fisherankney@gmail.com
## February 21th, 2017


## import the data
d2w <- d2w_source

## clear previous plots
dev.off()

## Format a new plot
par(mar=c(5,4,4,10), xpd=FALSE)

## Plot the data, organized according to depth

boxplot(d2w$`0.37`, d2w$`1.29`, d2w$`1.5`, d2w$`2`,
        d2w$`2.0699999999999998`, d2w$`2.98`, d2w$`3.25`, d2w$`3.4`,
        d2w$`3.61`, d2w$`3.75`, d2w$`3.84`, d2w$`3.95`, 
        d2w$`4`, d2w$`4.0999999999999996`, d2w$`4.5`, d2w$`4.62`,
        d2w$`5`, d2w$`5.2`, d2w$`5.5`, d2w$`5.77`, 
        d2w$`6.08`, d2w$`8.84`,
        data=d2w,
        col = c("violet", "turquoise", "violet", "turquoise",
                "seagreen3", "violet", "seagreen3","turquoise",
                "violet", "turquoise", "violet", "turquoise",
                "violet", "seagreen3", "turquoise", "seagreen3",
                "seagreen3", "slateblue", "slateblue", "seagreen3",
                "slateblue", "slateblue"
               ),
        names = c("0.37", "1.29", "1.5", "2",
                  "2.07", "2.98", "3.25", "3.4",
                  "3.61", "3.75", "3.84", "3.95",
                  "4", "4", "4.5", "4.62",
                  "5","5.2", "5.5", "5.77",
                  "6.08", "8.84"
                 ),
        main = "Depth to Water Table vs Growth Index",
        xlab = "Depth to Water Table (m)",
        ylab = "Growth Index"
                 )

legend('topleft',
       legend=c("BB", "B3", "B12", "B9"),
       col = c("violet", "turquoise", "seagreen3", "slateblue"),
       pch=c(20, 20, 20, 20),
       bty="n"
)


  

## Plot the data, according to site number

## Clear previous plots
dev.off()

## Format a new plot
par(mar=c(5,4,4,10), xpd=FALSE)



boxplot(d2w$`0.37`, d2w$`1.29`, d2w$`1.5`, d2w$`2`,
        d2w$`2.0699999999999998`, d2w$`2.98`, d2w$`3.25`, d2w$`3.4`,
        d2w$`3.61`, d2w$`3.75`, d2w$`3.84`, d2w$`3.95`,
        d2w$`4`, d2w$`4.0999999999999996`, d2w$`4.5`, d2w$`4.62`,
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
                "seagreen3", "violet", "seagreen3","turquoise",
                "violet", "turquoise", "violet", "turquoise",
                "violet", "seagreen3", "turquoise", "seagreen3",
                "seagreen3", "slateblue", "slateblue", "seagreen3",
                "slateblue", "slateblue"
               ),
        names = c("0.37", "1.29", "1.5", "2",
                  "2.07", "2.98", "3.25", "3.4",
                  "3.61", "3.75", "3.84", "3.95",
                  "4", "4", "4.5", "4.62",
                  "5", "5.2", "5.5", "5.77",
                  "6.08", "8.84"
                 ),
        main = "Depth to Water Table & Average Growth Indices",
        xlab = "Depth to Water Table (m)",
        ylab = "Growth Index"
)

legend('topleft',
       legend=c("BB", "B3", "B12", "B9"),
       col = c("violet", "turquoise", "seagreen3", "slateblue"),
       pch=c(20, 20, 20, 20),
       bty="n"
)
