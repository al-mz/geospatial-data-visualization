SELECT 
area_sq_km,
ST_AsGeoJSON(ST_Transform(geometry,4326)) :: json->>'coordinates' AS coordinates
FROM sample_table