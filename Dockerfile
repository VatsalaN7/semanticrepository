FROM khaller/graphdb-free:1.3.5-graphdb9.11.0

COPY --chmod=0755 docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh

EXPOSE 7200

ENTRYPOINT ["docker-entrypoint.sh", "--force", "--recursive", "-q", "/tmp", "-c", "/opt/graphdb/graphdb-repo-config.ttl", "/opt/graphdb/home/graphdb-import"]
