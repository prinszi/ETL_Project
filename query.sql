drop table if exists mortality;
drop table if exists emissions;
drop table if exists county_ref_db;

CREATE TABLE county_ref_db (
	index int,
	county_state varchar PRIMARY KEY
);

create table emissions (
	index int,
	county varchar,
	unhealthy_days int,
	very_unhealthy_days int, 
	hazardous_days int, 
	max_aqi int, 
	median_aqi int, 
	days_so2 int,
	days_pm25 int,
	FOREIGN KEY (county) REFERENCES county_ref_db(county_state)
);

create table mortality (
	index int,
	county varchar,	
	category varchar, 
	mort_1980 int, 
	mort_1985 int, 
	mort_1990 int, 
	mort_1995 int, 
	mort_2000 int, 
	mort_2005 int, 
	mort_2010 int, 
	mort_2014 int,
	percent_mort_change int,
	FOREIGN KEY (county) REFERENCES county_ref_db(county_state)
);

select * from county_ref_db;