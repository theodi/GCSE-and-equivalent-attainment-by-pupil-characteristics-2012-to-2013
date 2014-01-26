# This script assumes that R's working directory is the project's root folder

library(data.table)

removeSummaryColumns <- function (filename) {
    # read the file
    d <- data.table(read.csv(filename, na.strings = "N/A", stringsAsFactors = FALSE))
    # drop all columns whose name contain '_all_' 
    columnsToDrop <- colnames(d)[grep("[\\s\\S]*_all_[\\s\\S]*", colnames(d))]
    if (length(columnsToDrop) > 0) d[ , eval(columnsToDrop) := NULL]
    # save the file
    write.csv(d, filename, row.names = FALSE)
}

for (filename in list.files("./data/processed/02_stage_2/", full.names = TRUE)) {
    removeSummaryColumns(filename)   
}