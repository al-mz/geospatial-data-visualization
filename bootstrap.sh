#!/bin/bash

# Creates a sample table in the PostGIS database
docker exec -ti -u root geospatial_data_loader bash -c "python3 ./data_loader.py" 

# Initializes the Superset application
docker exec -ti -u root superset bash -c "sh ./superset-init.sh"