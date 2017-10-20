DROP VIEW IF EXISTS pt_planet_osm_point;
CREATE VIEW pt_planet_osm_point AS
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
way as "way"
FROM planet_osm_hstore_point;

GRANT select ON pt_planet_osm_point TO public;
