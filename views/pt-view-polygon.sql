DROP VIEW IF EXISTS pt_planet_osm_polygon;
CREATE VIEW pt_planet_osm_polygon AS
SELECT
osm_id,
tags->'highway' as "highway",
tags->'amenity' as "amenity",
tags->'name' as "name",
tags->'public_transport' as "public_transport",
tags->'train' as "train",
tags->'railway' as "railway",
tags->'aerialway' as "aerialway",
tags->'bus' as "bus",
tags->'disused' as "disused",
way as "way",
way_area as way_area,
z_order as z_order
FROM planet_osm_hstore_polygon;

GRANT select ON pt_planet_osm_polygon TO public;
