FROM alpine

RUN apk update && \
  apk add --no-cache openssl && \
  rm -rf /var/cache/apk/*

USER 65534:65534

ENTRYPOINT ["openssl"]
