FROM osrm/osrm-backend@sha256:6d1d4e6bc0917d8aa42afac41430f1003cc8d2fd586245df6a117ba89cbc9f08
RUN mkdir -p /data
WORKDIR /data
COPY start-osrm-server.sh /
RUN apt-get update \
  && apt-get upgrade -y \
  && apt-get install -y wget \
  && apt-get clean \
  && chmod +x /start-osrm-server.sh 
ENTRYPOINT ["/start-osrm-server.sh"]
