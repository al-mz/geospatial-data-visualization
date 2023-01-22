SELECT 
province_name,
area,
ST_AsGeoJSON(ST_Transform(geometry,4326)) :: json->>'coordinates' AS coordinates
FROM ontario_sample