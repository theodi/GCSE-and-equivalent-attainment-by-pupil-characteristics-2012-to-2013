# This script assumes that R's working directory is the project's root folder

library(data.table)

cleanseLAFiles <- function (inFile, outFile) {
    # read the file
    d <- data.table(read.csv(inFile, na.strings = "N/A", stringsAsFactors = FALSE))
    # drop all rows whose column LA_code_9_digits is empty
    d <- d[LA_code_9_digit != ""]
    # drop all columns whose name contain '_all_' 
    d[ , colnames(d)[grep("[\\s\\S]*_all_[\\s\\S]*", colnames(d))] := NULL]
    # save the file
    write.csv(d, outFile, row.names = FALSE)
}

cleanseLAFiles("./data/processed/01_stage_1/SFR05_2014_UD_LA_1.csv", 
    "./data/processed/02_stage_2/Achievements_by_LA.csv")
cleanseLAFiles("./data/processed/01_stage_1/SFR05_2014_UD_LA_2.csv", 
   "./data/processed/02_stage_2/Achievements_by_LA_et_al.csv")
