# Use an official OSRM Docker image as the base image
FROM osrm/osrm-backend

# Copy your OSRM data files to the container
COPY data/* /data/

# Set the necessary environment variables
ENV OSRM_BACKEND_OPTIONS "--algorithm mld /data/map.osm.pbf"

# Expose the OSRM HTTP server port
EXPOSE 5000

# Command to start OSRM
CMD ["osrm-routed", "--port", "5000", "--algorithm", "mld", "/data/map.osm.pbf"]

