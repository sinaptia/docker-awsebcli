FROM python:alpine

RUN apk add --no-cache --update git openssh-client

RUN pip install --no-cache-dir --upgrade awsebcli

WORKDIR /data

ENTRYPOINT ["eb"]
