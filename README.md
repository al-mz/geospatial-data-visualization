# Geospatial-data-visualization
Visualize geospatial data in Apache Superset with the help of docker and PostGIS database.  


# Dependecies
You need to install docker and docker-compose prior to running containers.


# Usage
## Installation
1. Clone this repo:
```
$ git clone https://github.com/ali-mhmzadeh/geospatial-data-visualization
```

2. Start dockerized services.
```
$ cd geospatial-data-visualization && docker-compose up
```

## Initialize Superset App
3. After the Docker containers have started and are running, you'll need to bootstrap the cluster to initialize Superset app and dashboard. The following command will connect Superset to the Olist database and import pre-made dashboard:

```
$ sh bootstrap.sh
```
