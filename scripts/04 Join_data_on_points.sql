CREATE VIEW JAN31TEMP AS
SELECT stn,yyyymmdd,tg/10::real AS Tc, l.the_geom AS geom, gid 
FROM januaritemp AS j LEFT JOIN locationstemp AS l
ON l.station=j.stn
where yyyymmdd = '20150131';


CREATE VIEW JAN31TEMP2 AS
SELECT stn,yyyymmdd,tg/10::real as Tc, l.the_geom as geom, gid 
from januaritemp as j left join locationstemp as l
on l.station=j.stn
where yyyymmdd = '20150131' AND tg > 20;

CREATE VIEW JAN31avg AS
SELECT stn, avg(tg/10::real) as Tavg ,l.the_geom as geom, gid 
from januaritemp as j left join locationstemp as l
on l.station=j.stn 
GROUP BY stn, l.the_geom,gid;
