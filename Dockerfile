FROM python:3.11-alpine

RUN apk add --no-cache --update alpine-sdk git libffi-dev openssh-client openssl-dev && \
  pip install --no-cache-dir --upgrade awsebcli

WORKDIR /data

ENTRYPOINT ["eb"]
