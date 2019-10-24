FROM postgres:latest

# RUN mkdir /docker-entrypoint-initdb.d

# initdb.sh will be run by the parent container's entrypoint on container
# startup, prior to the the database being started.
ADD initdb.sh /docker-entrypoint-initdb.d/
RUN chmod +x /docker-entrypoint-initdb.d/*.sh

# Uncomment and replace this with your own password.
# ENV JPY_PSQL_PASSWORD sucksK1p@1tSimple,Stupid
