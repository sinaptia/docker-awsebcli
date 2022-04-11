FROM python:alpine

ARG GID=1001
ARG UID=1000

RUN apk add --no-cache --update alpine-sdk git libffi-dev openssh-client openssl-dev && \
  pip install --no-cache-dir --upgrade awsebcli && \
  addgroup -S -g $GID appgroup && \
  adduser -S -u $UID -G appgroup appuser

WORKDIR /data

USER appuser

ENTRYPOINT ["eb"]
