FROM debian:stable-slim
# COPY source destination
COPY boot-docker /bin/goserver
# ADD Command
CMD ["/bin/goserver"]