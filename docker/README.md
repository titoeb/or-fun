# Host an OSRM server.

Using this Dockerfile an OSRM server is run.

# Build
The image can be build with `docker build -t <desired-name>:<desired-tag> .` 

# Run
On runtime, the container will first pull a tile and preprocess it with the bash script which is set as startup-script. Therefore, it needs the environment-variable TILE_LINK that should contain the address of a valid tile that can be downloaded. To run a OSRM server for computing distances (among others) the following command can be run: `docker run -t -i -p 5000:5000 -e TILE_LINK=http://download.geofabrik.de/europe/andorra-latest.osm.pbf <image-name> osrm-routed --algorithm mld /data/andorra-latest.osrm`. Then the distance computation can be requested via curl with `curl "http://127.0.0.1:5000/route/v1/driving/13.388860,52.517037;13.385983,52.496891?steps=true"`.
