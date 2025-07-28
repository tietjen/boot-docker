FROM debian:stable-slim
# COPY source destination
COPY boot-docker /bin/goserver
# Set environment variable
ENV PORT=8991
# ADD Command
CMD ["/bin/goserver"]