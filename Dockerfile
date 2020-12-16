FROM alpine

RUN apk update && \
  apk add --no-cache openssl && \
  rm -rf /var/cache/apk/*

USER 1001:1001

ENTRYPOINT ["openssl"]
