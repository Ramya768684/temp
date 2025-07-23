FROM ubuntu:22.04

LABEL Owner="ramya" \
      App="nginx" \
      Version="1.27.1"

# Avoid hardcoding sensitive credentials. Inject them at runtime if needed.
ENV AWS_DEFAULT_REGION=us-east-1
ENV DEBIAN_FRONTEND=noninteractive

WORKDIR /app

RUN apt update -y && \
    apt install -y iputils-ping net-tools wget curl unzip nginx && \
    apt clean && rm -rf /var/lib/apt/lists/*

# Start NGINX in the foreground
CMD ["nginx", "-g", "daemon off;"]

 