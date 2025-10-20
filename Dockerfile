# Use a stable Icecast image
FROM moul/icecast:latest

# Copy your config
USER root
COPY icecast.xml /etc/icecast2/icecast.xml

# Expose the port Icecast runs on
EXPOSE 8000

# Start Icecast with your config
CMD ["icecast2", "-c", "/etc/icecast2/icecast.xml"]
