#!/bin/bash

# Initializes the Superset application
docker exec -ti -u root superset bash -c "sh ./superset-init.sh"