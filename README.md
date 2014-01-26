GCSE and equivalent attainment by pupil characteristics: 2012 to 2013
=====================================================================

#This repository is provisionally private, while awaiting to find out if it will be used for the Open Data Institute and Nesta's Open Data Challenge Series.

##Introduction

This is an exercise in collecting, pre-processing and cleansing an open data dataset on education made available by the UK government's Department for Education (DfE). I chose the "GCSE and equivalent attainment by pupil characteristics: 2012 to 2013" dataset, published by the DfE only a few days ago, on 23rd January 2014.

My objective is to cover the early stages - marked by the green frame - of a typical data science analysis project, as shown in the diagram below (from ["Doing Data Science"](http://shop.oreilly.com/product/0636920028529.do) by Cathy O'Neil and Rachel Schutt, O'Reilly 2013). 

![Target stages in a larger data science project](images/process.png "Target stages in a larger data science project")

The original dataset was published at [https://www.gov.uk/government/publications/gcse-and-equivalent-attainment-by-pupil-characteristics-2012-to-2013](https://www.gov.uk/government/publications/gcse-and-equivalent-attainment-by-pupil-characteristics-2012-to-2013). The data was downloaded on 25th January 2014.

##Folders description

Below is a description of the contents in this project, by folder.
- *data*
    - *raw*: the source publication webpage, dataset and documentation as found at the source web address
    - *preprocessed*: selected datasets from the 'raw' folder, cleansed and homogenised according to data science best practices
    	- *01_stage_1* this folder collects the parts of the raw data that I decided were worth processing further
    	- *02_stage_2* this folder is the result of the first stage of processing, mainly aimed at making the contents of *01_stage_1* onto a canonical form according to my interpretation of the data. 
- *images*: all images used for this documentation
- *scripts*
	- *stage_2*: the [OpenRefine](http://openrefine.org/) operation history and [R](http://www.r-project.org/) scripts used for the processing of stage 2.

##Methodology

The detailed methodology is described in [methodology.md](methodology.md).

##Licence

![Open Government Licence v2.0](http://www.nationalarchives.gov.uk/images/infoman/ogl-symbol-41px-retina-black.png "Open Government Licence v2.0") The source data was made available by the DfE under the [Open Government Licence v2.0](http://www.nationalarchives.gov.uk/doc/open-government-licence/version/2).

![Creative Commons License](http://i.creativecommons.org/l/by/4.0/88x31.png "Creative Commons License") All subsequent work is licensed under a [Creative Commons Attribution 4.0 International License](http://creativecommons.org/licenses/by/4.0/).