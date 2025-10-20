# Dockerfile
FROM moul/icecast         # small, widely-used icecast image (pulls from Docker Hub)
# if you prefer another image, see notes below.

# create config dir and copy config
USER root
COPY icecast.xml /etc/icecast2/icecast.xml

# expose the Icecast port
EXPOSE 8000

# start icecast
CMD ["icecast2", "-c", "/etc/icecast2/icecast.xml"]
