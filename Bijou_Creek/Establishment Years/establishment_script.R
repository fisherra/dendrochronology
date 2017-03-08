## Bijou Creek Establishment Years 
## Fisher Ankney
## 12.9.2016

dev.off()
library(ggplot2)
bijou <- rings_establishment_years
print(bijou)

## Pull the establishment year variable from the dataset
## and put it into the variable freq, display variable freq

bijou_frame <- data.frame(bijou$bb_year, bijou$b3_year, bijou$b9_year, bijou$b12_year)
print(bijou_frame)

## Make a table from these values, display the table

#exploratory plots 
qplot(bb_year, data=bijou)
qplot(all, data=bijou)

#exploratory plots
ggplot(bijou, aes(bb_year))+geom_bar(color="black", fill="red")
ggplot(bijou, aes(b3_year))+geom_bar(color="blue")
ggplot(bijou, aes(b9_year))+geom_bar(color="green")
ggplot(bijou, aes(b12_year))+geom_bar(color="purple")


####### Beautiful plots ################

## BB ## 
ggplot(bijou, aes(bb_year)) +
  geom_bar(color="violetred", fill="violet") +
  labs(x="Year", y="Number of Establishments", 
       title="BB Establishment Years") + 
  theme_bw() +
  theme(
    plot.title = element_text(size=16, face="bold", vjust=1, hjust=0.5),
    axis.text.x = element_text(size=12, vjust=1), 
    axis.text.y = element_text(size=12, vjust=1)
  ) + 
  scale_x_continuous(
    breaks = c(1800, 1810,1820,1830,1840,1850,1860,1870,1880,1890,
               1900,1910,1920,1930, 1940, 1950, 1960, 1970, 1980,
               1990, 2000, 2010),
    minor_breaks = seq(1800,2015,by=5),
    expand=c(0.01,0.01)
  ) + 
  scale_y_continuous(
    breaks = c(0,2,4,6,8,10,12,14),
    minor_breaks=seq(0,14,by=1),
    expand=c(0,0)
  )


## B3 ##
ggplot(bijou, aes(b3_year)) +
  geom_bar(color="turquoise3", fill="turquoise") +
  labs(x="Year", y="Number of Establishments", 
       title="B3 Establishment Years") + 
  theme_bw() +
  theme(
    plot.title = element_text(size=16, face="bold", vjust=1, hjust=0.5),
    axis.text.x = element_text(size=12, vjust=1), 
    axis.text.y = element_text(size=12, vjust=1)
  ) + 
  scale_x_continuous(
    breaks = c(1800, 1810,1820,1830,1840,1850,1860,1870,1880,1890,
               1900,1910,1920,1930, 1940, 1950, 1960, 1970, 1980,
               1990, 2000, 2010),
    minor_breaks = seq(1800,2015,by=5),
    expand=c(0.01,0.01)
  ) + 
  scale_y_continuous(
    breaks = c(0,2,4,6,8,10,12,14),
    minor_breaks=seq(0,14,by=1),
    expand=c(0,0)
  )

## B9 ##
ggplot(bijou, aes(b9_year)) +
  geom_bar(color="seagreen4", fill="seagreen3") +
  labs(x="Year", y="Number of Establishments", 
       title="B9 Establishment Years") + 
  theme_bw() +
  theme(
    plot.title = element_text(size=16, face="bold", vjust=1, hjust=0.5),
    axis.text.x = element_text(size=12, vjust=1), 
    axis.text.y = element_text(size=12, vjust=1)
  ) + 
  scale_x_continuous(
    breaks = c(1800, 1810,1820,1830,1840,1850,1860,1870,1880,1890,
               1900,1910,1920,1930, 1940, 1950, 1960, 1970, 1980,
               1990, 2000, 2010),
    minor_breaks = seq(1800,2015,by=5),
    expand=c(0.01,0.01)
  ) + 
  scale_y_continuous(
    breaks = c(0,2,4,6,8,10,12,14),
    minor_breaks=seq(0,14,by=1),
    expand=c(0,0)
  )


## B12 ##
ggplot(bijou, aes(b12_year)) +
  geom_bar(color="slateblue4", fill="slateblue") +
  labs(x="Year", y="Number of Establishments", 
       title="B12 Establishment Years") + 
  theme_bw() +
  theme(
    plot.title = element_text(size=16, face="bold", vjust=1, hjust=0.5),
    axis.text.x = element_text(size=12, vjust=1), 
    axis.text.y = element_text(size=12, vjust=1)
  ) + 
  scale_x_continuous(
    breaks = c(1800, 1810,1820,1830,1840,1850,1860,1870,1880,1890,
               1900,1910,1920,1930, 1940, 1950, 1960, 1970, 1980,
               1990, 2000, 2010),
    minor_breaks = seq(1800,2015,by=5),
    expand=c(0.01,0.01)
  ) + 
  scale_y_continuous(
    breaks = c(0,2,4,6,8,10,12,14),
    minor_breaks=seq(0,14,by=1),
    expand=c(0,0)
  )


### All sites combined ######

ggplot(bijou, aes(all)) +
  geom_bar(color="black", fill="gray17") +
  labs(x="Year", y="Number of Establishments", 
       title="Bijou Creek Establishment Years") + 
  theme_bw() +
  theme(
    plot.title = element_text(size=16, face="bold", vjust=1, hjust=0.5),
    axis.text.x = element_text(size=12, vjust=1), 
    axis.text.y = element_text(size=12, vjust=1)
  ) + 
  scale_x_continuous(
    breaks = c(1800, 1810,1820,1830,1840,1850,1860,1870,1880,1890,
               1900,1910,1920,1930, 1940, 1950, 1960, 1970, 1980,
               1990, 2000, 2010),
    minor_breaks = seq(1820,2015,by=5),
    expand=c(0.01,0.01)
  ) + 
  scale_y_continuous(
    breaks = c(0,2,4,6,8,10,12,14),
    minor_breaks=seq(0,14,by=1),
    expand=c(0,0)
  )


