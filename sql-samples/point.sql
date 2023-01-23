SELECT 
ST_X(ST_Centroid(geometry)) as centroid_lon,
ST_Y(ST_Centroid(geometry)) as centroid_lat
FROM sample_table