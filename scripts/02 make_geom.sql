--SELECT name, default_version,installed_version 
--FROM pg_available_extensions

SELECT PostGIS_Full_Version();

--select ST_SetSRID(ST_MakePoint(lon,lat),4326) as the_geom FROM locationstemp

ALTER TABLE locationstemp ADD COLUMN the_geom geometry(Point,4326);
UPDATE locationstemp SET the_geom = ST_SetSRID(ST_MakePoint(lon,lat),4326);

-- apparently import province has srid 0
--
-- check if oke
select ST_SRID(geom) from provincie_wgs84 ;
-- Srid 0 !

ALTER TABLE provincie_wgs84 ALTER COLUMN geom TYPE geometry(MultiPolygon,0) USING ST_SetSRID(geom,4326);
-- wtf! http://en.wikipedia.org/wiki/SRID

select ST_SRID(geom) from provincie_wgs84 ;

select ST_SRID(the_geom) from locationstemp ;

-- SRID 4326 = wgs84


