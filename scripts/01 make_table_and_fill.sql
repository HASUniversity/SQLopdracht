CREATE TABLE locationsTemp
(	station int,
	plaats char(25) ,
	sinds char(8),
	meting char(8),
	WMO int,
	stad char(25),
	lat double precision,
	lon double precision
);

COPY locationsTemp FROM 'C:\Users\John GMD\Dropbox\GM1405 GeoICT\1617\Week7\Scripting\sql_opdracht\data\meet_locaties.csv' DELIMITER ';' CSV HEADER;

ALTER TABLE locationsTemp  ADD COLUMN gid serial PRIMARY KEY ;
UPDATE locationsTemp gid SET gid=station ;

CREATE TABLE januariTemp 
(
STN	int,
YYYYMMDD	int,
DDVEC	int,
FHVEC  int,
FG		int,  
FHX	int,
FHXH	int,
FHN	int,
FHNH	int,
FXX	int,
FXXH	int,
TG	   int,
TN	 int,
TNH	 int,  
TX	int,	  
TXH	int,	 
T10N	int,	
T10NH	int,	   
SQ	int,	   
SP	int,	    
Q	int,	   
DR	int,	   
RH	int,	  
RHX	int,	 
RHXH	int,	   
PG	int,	   
PX	int,	  
PXH	int,	   
PN	int,	  
PNH	int,	  
VVN	int,	 
VVNH	int,	  
VVX	int,	 
VVXH	int,	   
NG	int,	   
UG	int,	   
UX	int,	  
UXH	int,	   
UN	int,	  
UNH	int,	 
EV24	int );

COPY januariTemp FROM 'C:\Users\John GMD\Dropbox\GM1405 GeoICT\1617\Week7\Scripting\sql_opdracht\data\vorigemaand_with_header.csv' DELIMITER ';' CSV HEADER;


