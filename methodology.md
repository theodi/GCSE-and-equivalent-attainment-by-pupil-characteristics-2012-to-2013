Process
=======

##Summary

##Data

###Stage 1

After a first analysis of the set of files that were published, we originally decided to ignore all data but for the contents of the SFR05_2014_Underlying_data.zip file, as our intention was to prepare the data for exploration without necessarily considering the conclusions that the publisher has already drawn. Its content are in the [*01_stage_1*](processed/data/01_stage_1/) folder.

Among the contents, [*SFR05_2014_UD_metadata.txt*](data/processed/01_stage_1/SFR05_2014_UD_metadata.txt) was identified as their key. The file describes elements of the source datafiles' background, coverage, data quality and statistical disclosure (anonymisation). The document also has a full explaination of the acronyms used in the data and a description of the variable names. 

All the csv tables were loaded into [OpenRefine](http://openrefine.org/) for preliminary analysis. We soon realised that we could not interpret the datasets without studying the final reports, too. It is like if much of the documentation for the data was captured within the final reports only.

A good example is the two SFR05_2014_UD_national_*x*.csv tables. Despite their names, the latter is not a continuation of the former. The first file includes several perspectives (pupils achievements by EAL, by FSM, by SEN provision and more). The second file includes one perspective only: by SEN privison *and* ethinicity, hence requiring a higher number of columns, hence the separate file. All of this was clear after studying one the final reports, [SFR05_2014_National_and_LA_tables.xls](data/raw/SFR05_2014_National_and_LA_tables.xls). 

###Stage 2

In stage 2 we re-organised the *01_stage_1* folder in its canonical components. The result is in [*01_stage_2*](processed/data/02_stage_2/). Below is the description of each of the output files. Data is still in .csv format, and each file is accompanied by the OpenRefine operation history required to get there.

####Source: *SFR05_2014_UD_LA_1.csv*

The output files are:
- Achievements_by_EAL.csv
- Achievements_by_FSM.csv
- Achievements_by_SEN_provision.csv
- Achievements_by_SEN_type.csv
- Achievements_by_disadvantage.csv
- Achievements_by_disadvantaged_schools.csv
- Achievements_by_ethnicity.csv

For each of the files, we:
- removed any empty rows
- removed any redundant columns: e.g. "Country_code_9_digit", "Country_code" and "Country_name" that have the same values for all records, respectively "E92000001", 921 and "England"
- identified and removed any rows with consolidated data from other rows (totals, etc.)

When necessary, we 'specialised' the contents of the *Characteristic_category* column, e.g. in *Achievements_by_SEN_provision.csv* we highlighted that "School Action" and "School Action+" are SEN categories without a statement.

####Source: *SFR05_2014_UD_LA_2.csv*

The output files are:
- Achievements_by_SEN_provision_and_ethnicity.csv

The operations on the files were the same as for *SFR05_2014_UD_LA_1.csv*.






****content below this line needs re-writing

Unfortunately, the key lists the documents but does not explain what they are. Some of the files had the same name but for a "1" or "2" suffix. We started from analysing those assuming they were the same dataset split just for keeping the filesize smaller.

- SFR05_2014_UD_LA_*x*.csv: although the files appear to be similar, "1" has 24 more columns

- SFR05_2014_UD_national_1.csv: the file had empty rows, that were removed

- SFR05_2014_UD_national_2.csv: the file had empty rows, that were removed. The file appears to summarise the population by SEN (special educational needs) status only.


##Process


##Solution
