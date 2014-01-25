# Before starting, check that R's working directory is the project's root folder

library(data.table)

# download and unzip the data in the data/processed folder, delete the
# downloaded .zip file
download.file("https://www.gov.uk/government/uploads/system/uploads/attachment_data/file/274244/SFR05_2014_Underlying_data.zip", destfile = "./data/processed/SFR05_2014_Underlying_data.zip", method = "wget")
unzip("./data/processed/SFR05_2014_Underlying_data.zip", exdir = "./data/processed/", overwrite = TRUE)
file.remove("./data/processed/SFR05_2014_Underlying_data.zip")

SFR05_2014_UD_LA <- do.call("rbind", lapply(c("./data/processed/SFR05_2014_UD_LA_1.csv", "./data/processed/SFR05_2014_UD_LA_2.csv"), function (datasetFilename) {

    print(datasetFilename)
    
    # I read the file
    d <- data.table(read.csv(datasetFilename, na.strings = "N/A", stringsAsFactors = FALSE))
    
    # I drop the redundant columns: "Country_code_9_digit", "Country_code" and 
    # "Country_name" that have the same values for all records, respectively
    # "E92000001", 921 and "England"
    d[ , Country_code_9_digit := NULL]
    d[ , Country_code := NULL]
    d[ , Country_name := NULL]

    return(d);
    
}))

