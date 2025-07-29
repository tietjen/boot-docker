FROM debian:stable-slim
COPY main.py main.py
COPY books/ books/
RUN <<EOF
apt-get update
apt-get install -y python-is-python3
EOF
CMD ["python", "main.py"]