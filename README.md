# ETL_Project
The goal of our project was to understand how emissions in each state relates to mortality (i.e. is the air we breath killing us??)

Extract

Initially we wanted to download the emission data through a single CSV (https://www.kaggle.com/epa/hazardous-air-pollutants. The data was too large, so we downloaded individual year records. The data was all in CSV format. 

Emissions data: https://aqs.epa.gov/aqsweb/airdata/download_files.html
Mortality data: https://www.kaggle.com/IHME/us-countylevel-mortality

Transform

Emissions cleanup: Since we had to extract individual year records, the first step was to join all of the emissions data. In order to sort by county, we had to conduct various formatting. We removed suffixes. We then dropped US territories and made the decision to drop Alaska data in its entirety due to its incongruency. 

Mortality cleanup: We also had to drop suffixes from this data. The state ranking was also given, which we dropped since emissions data was not provided at a state level. 

Join: We dropped various columns to zero in on the  desired data output. We created a third table to hold all of the county data; this table was crucial in creating a SQL database. In order to create this combined table, there was a lot of necessary, but unexpected, cleanup. We found a lot of inconsistencies in how counties were named. 

Load

We loaded the tables into postgres. Our third table held the primary key, which allowed the two tables (emissions & mortality) to relate to one another. 
