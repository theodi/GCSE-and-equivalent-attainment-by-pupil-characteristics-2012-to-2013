Process
=======

##Summary

##Data

Data processing and cleansing developed through *** stages described below.

###Stage 1

After a first analysis of the set of files that were published, we originally decided to ignore all data but for the contents of the [*SFR05_2014_Underlying_data.zip*](data/raw/SFR05_2014_Underlying_data.zip) file, as our intention was to prepare the data for exploration without necessarily considering the conclusions that the publisher has already drawn. The zip file's contents are in the [*01_stage_1*](data/processed/01_stage_1/) folder.

Among the contents, [*SFR05_2014_UD_metadata.txt*](data/processed/01_stage_1/SFR05_2014_UD_metadata.txt) was identified as their key. The file describes elements of the source datafiles' background, coverage, data quality and statistical disclosure (anonymisation). The document also has a full explaination of the acronyms used in the data and a description of the variable names. 

All the csv tables were loaded into [OpenRefine](http://openrefine.org/) for preliminary analysis. We soon realised that we could not interpret the datasets without studying the final reports, too. It is like if much of the documentation for the data was captured within the final reports only.

A good example is the two *SFR05_2014_UD_national_1.csv* and *SFR05_2014_UD_national_2.csv* tables. Despite their names, the latter is not a continuation of the former. The first file includes several perspectives (pupils achievements by EAL, by FSM, by SEN provision and more). The second file includes one perspective only: by SEN provison *and* ethinicity, hence requiring a higher number of columns, hence the separate file. All of this was clear after studying one the final reports, [SFR05_2014_National_and_LA_tables.xls](data/raw/SFR05_2014_National_and_LA_tables.xls). 

###Stage 2

In stage 2 we re-organised the data in the *01_stage_1* folder in its canonical components. The result is in [*01_stage_2*](data/processed/02_stage_2/). Below is the description of each of the output files. Data is still in .csv format.

####Source: *SFR05_2014_UD_national_1.csv*

The output files are:
- *Attainments_by_EAL.csv*
- *Attainments_by_FSM.csv*
- *Attainments_by_SEN_provision.csv*
- *Attainments_by_SEN_type.csv*
- *Attainments_by_disadvantage.csv*
- *Attainments_by_disadvantaged_schools.csv*
- *Attainments_by_ethnicity.csv*

Note that all files distinguish also by gender, but that is not specified in the filename.

For each of the files, we:
- removed any empty rows
- removed any redundant columns: e.g. "Country_code_9_digit", "Country_code" and "Country_name" that have the same values for all records, respectively "E92000001", 921 and "England"
- identified and removed any rows that had consolidated data from other rows (totals, etc.)

When necessary, we 'specialised' the contents of the *Characteristic_category* column, e.g. in *Attainments_by_SEN_provision.csv* we highlighted that "School Action" and "School Action+" are SEN categories without a statement.

The files were processed using OpenRefine. The operation history for each file is in [scripts/stage_2](script/stage_2).

####Source: *SFR05_2014_UD_national_2.csv*

The output file is:
- *Attainments_by_SEN_provision_and_ethnicity.csv*

The operations on the files were the same as for *SFR05_2014_UD_LA_1.csv*.

####Source: *SFR05_2014_UD_LA_1.csv*

The output file is:
- *Attainments_by_LA.csv*

For each of the files, we:
- identified and removed any rows that had consolidated data from other rows (totals, etc.)
- identified and removed all redundant columns that had totals for boys and girls belonging to the same category

The files were processed using the [*Attainments_by_LA.R*](scripts/stage_2/Attainments_by_LA.R) R script.

####Source: *SFR05_2014_UD_LA_2.csv*

The output files is:
- *Attainments_by_LA_et_al.csv*

The operations on the files were the same as for *SFR05_2014_UD_LA_1.csv*.

####Source: *SFR05_2014_UD_parliamentary_constituency.csv*

The output file is:
- *Attainments_by_parliamentary_constituency.csv*

The operations on the files were the same as for *SFR05_2014_UD_LA_1.csv*.

####Source: *SFR05_2014_UD_residency.csv*

The output files are:
- *Attainments_by_residency_region_IDACI_rurality.csv*
- *Attainments_by_residency_region_and_rurality_detail.csv*
- *Attainments_by_residency_LAD.csv*

The operations on the files were the same as for *SFR05_2014_UD_LA_1.csv*.

####Source: *SFR05_2014_UD_residency.csv*

The output files are:
- *Attainments_by_school_LAD.csv*
- ***ongoing

The operations on the files were the same as for *SFR05_2014_UD_LA_1.csv*.






##Process

##Solution
