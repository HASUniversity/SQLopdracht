-- how much total
select count(station) as Nstations from locationstemp ;
-- 37

SELECT p.provnaam,count (l.station) as Nstations 
FROM  provincie_wgs84 as p LEFT JOIN  locationstemp as l
on  ST_CONTAINS(p.geom,l.the_geom)
-- the spatial overlay trick  ....
GROUP BY p.provnaam ORDER BY Nstations desc;

--http://http://postgis.net/docs/manual-2.0/ST_Contains.html

-- deze maar weglaten
-- alternatief
SELECT p.provnaam, count (l.station) as Nstations 
FROM  provincie_wgs84 as p,  locationstemp as l
where st_contains(p.geom,l.the_geom)
-- the spatial overlay trick ....
GROUP BY p.provnaam ORDER BY Nstations desc;


