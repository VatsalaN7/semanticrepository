#!/bin/bash
# docker pull ontotext/graphdb:9.11.1-se
docker pull khaller/graphdb-free:1.3.5-graphdb9.11.0
# docker run -p 0.0.0.0.:7200:7200 --name graphdb-instance-name -t ontotext/graphdb:tag
docker run -p 0.0.0.0:7200:7200 -v /Users/archana/virtuallab-solarfarm/graph-db/graphdb-store:/opt/graphdb/home --name graphdb-instance-name -t khaller/graphdb-free:1.3.5-graphdb9.11.0