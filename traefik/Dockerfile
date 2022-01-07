FROM smallstep/step-cli:$VERSION as BASE

FROM traefik:v2.2.8

RUN apk add bash curl

COPY --from=BASE /usr/local/bin/step /usr/local/bin/

COPY wrapper.sh /wrapper.sh

RUN chmod 700 /wrapper.sh

ENTRYPOINT ["/wrapper.sh"]
