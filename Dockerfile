FROM ubuntu:22.04
LABEL Owner="ramya" \
      App="nginx" \
      Version="1.27.1"
ENV AWS_DEFAULT_REGION=us-east-1
ENV DEBIAN_FRONTEND=noninteractive
WORKDIR /app
RUN apt update -y && \
    apt install -y iputils-ping net-tools wget curl unzip nginx && \
CMD ["nginx", "-g", "daemon off;"]

