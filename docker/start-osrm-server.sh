#!/bin/bash

wget ${TILE_LINK}
osrm-extract -p /opt/car.lua /data/*.osm.pbf
osrm-partition /data/*.osrm 
osrm-customize /data/*.osrm

exec ${@}
