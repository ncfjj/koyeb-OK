##

FROM alpine:latest

WORKDIR /root
COPY xf.sh /root/xf.sh

RUN apk update && apk add --no-cache wget unzip tzdata openssl ca-certificates \
    && chmod +x /root/xf.sh

CMD [ "/root/xf.sh" ]
