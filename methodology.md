Process
=======

##Summary

##Data
After a first analysis of the set of files that were published, we originally decided to ignore all data but for the contents of the SFR05_2014_Underlying_data.zip file, as our intention was to prepare the data for exploration without necessarily considering the conclusions that the publisher has already drawn. Its content are in the [01_SFR05_2014_Underlying_data](processed/data/01_SFR05_2014_Underlying_data/) folder.

Among the contents, [*SFR05_2014_UD_metadata.txt*](data/processed/SFR05_2014_UD_metadata.txt) was identified as their key. The file describes elements of the source datafiles' background, coverage, data quality and statistical disclosure (anonymisation). The document also has a full explaination of the acronyms used in the data and a description of the variable names. 

All the csv tables were loaded into [OpenRefine](http://openrefine.org/) for preliminary analysis. We soon realised that we could not interpret the datasets without studying the final reports, too. It is like if much of the documentation for the data was captured within the final reports only.

A good example is the two SFR05_2014_UD_national_*x*.csv tables. Despite their names, they are not one the continuation of the other, but different perspectives over the same population. SFR05_2014_UD_national_1.csv is the pupils' achievements by ethinicity, while SFR05_2014_UD_national_1.csv is the pupils' achievements by special educational needs (SEN) provision. All of this was clear after studying one the final reports, [SFR05_2014_National_and_LA_tables.xls](data/raw/SFR05_2014_National_and_LA_tables.xls). 

To make the situation worse, the same report includes data that does **not** appear in the "underlying data", e.g. the SEN students' categorisation by SEN type. 

****content below this line needs re-writing

Unfortunately, the key lists the documents but does not explain what they are. Some of the files had the same name but for a "1" or "2" suffix. We started from analysing those assuming they were the same dataset split just for keeping the filesize smaller.

- SFR05_2014_UD_LA_*x*.csv: although the files appear to be similar, "1" has 24 more columns

- SFR05_2014_UD_national_1.csv: the file had empty rows, that were removed

- SFR05_2014_UD_national_2.csv: the file had empty rows, that were removed. The file appears to summarise the population by SEN (special educational needs) status only.


##Process


##Solution
