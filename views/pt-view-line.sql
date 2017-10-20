DROP VIEW IF EXISTS pt_planet_osm_line;
CREATE VIEW pt_planet_osm_line AS
SELECT
osm_id,
tags->'route' as route,
tags->'line' as line,
tags->'state' as state,
tags->'ref' as ref,
tags->'name' as name,
way as "way",
way_area as way_area,
z_order as z_order
FROM planet_osm_hstore_line;

GRANT select ON pt_planet_osm_line to public;
