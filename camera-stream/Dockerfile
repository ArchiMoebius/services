FROM alpine:latest

RUN apk add --no-cache openssh-client

COPY entry.sh /entry.sh

RUN chmod +x /entry.sh

ENTRYPOINT ["/entry.sh"]
