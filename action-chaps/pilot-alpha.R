library(readxl) 
library(psych)  

## load the data 
ExcelFile <- '/R-Markdown/thesis/action-chaps/pilot-data.xlsx'
ExcelSheet <- 'data'
ExcelRange <- 'A1:AR61'
Data <- read_excel(ExcelFile, sheet=ExcelSheet, range=ExcelRange, col_names = TRUE)
Data <- as.data.frame(Data)

## cut down to work on the ATMI items (I1 to I40)
Data <- Data[, paste0("I", 1:40)]

## get the standardized alpha
pilot_alpha <- psych::alpha(Data, check.keys=TRUE)$total$std.alpha

## round off to two digits 
pilot_alpha <- round(pilot_alpha, digits=2)
