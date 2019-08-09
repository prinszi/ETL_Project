drop table if exists emissions;
drop table if exists mortality;
drop table if exists county;

create table emissions (
	county varchar primary key,
	unhealthy_days int,
	very_unhealthy_days int, 
	hazardous_days int, 
	max_aqi int, 
	median_aqi int, 
	days_so2 int,
	days_pm25 int
);

create table mortality (
	id serial Primary Key,
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
	percent_mort_change int
);

select * from mortality;