CREATE EXTERNAL TABLE accidents
(
Accident_Index STRING,Location_Easting_OSGR STRING,Location_Northing_OSGR STRING,Longitude STRING,Latitude STRING,Police_Force STRING,Accident_Severity STRING,
Number_of_Vehicles STRING,Number_of_Casualties STRING,Date STRING,Day_of_Week STRING,Time STRING,Local_Authority_District STRING,Local_Authority_Highway STRING,
1st_Road_Class STRING,1st_Road_Number STRING,Road_Type STRING,Speed_limit STRING,Junction_Detail STRING,Junction_Control STRING,2nd_Road_Class STRING,2nd_Road_Number STRING,
Pedestrian_Crossing_Human_Control STRING,Pedestrian_Crossing_Physical_Facilities STRING,Light_Conditions STRING,Weather_Conditions STRING,
Road_Surface_Conditions STRING,Special_Conditions_at_Site STRING,Carriageway_Hazards STRING,Urban_or_Rural_Area STRING,
Did_Police_Officer_Attend_Scene_of_Accident STRING,LSOA_of_Accident_Location STRING,Year STRING
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
   "separatorChar" = ",",
   "quoteChar"     = "'",
   "escapeChar"    = "\\"
)
STORED AS TEXTFILE
LOCATION '/user/cloudera/dataset'
TBLPROPERTIES ("skip.header.line.count"="1");