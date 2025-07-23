FROM ubuntu:22.04
LABEL Owner=chaitanya
LABEL App=nginx
LABEL Version=1.27.1
ENV AWS_ACCESS_KEY_ID=AKIAST6S7QZ7L44WO5G4
ENV AWS_SECRET_ACCESS_KEY=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
ENV AWS_DEFAULT_REGION=us-east-1
ENV DEBIAN_FRONTEND=noninteractive
WORKDIR /app
RUN apt update -y &&\
    apt install -y iputils-ping net-tools wget curl unzip && \
RUN apt install nginx -y 
RUN systemctl start nginx
 