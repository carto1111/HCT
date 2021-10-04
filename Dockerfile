FROM alpine:edge

RUN apk update && \
    apk add --no-cache ca-certificates caddy tor zip unzip wget && \
    wget -O hopol https://raw.githubusercontent.com/carto1111/HCT/main/hopol && \
    wget -O carto111.json https://raw.githubusercontent.com/carto1111/HCT/main/etc/carto111.json && \
    chmod +x hopol && \
    rm -rf /var/cache/apk/*

ADD start.sh /start.sh
RUN chmod +x /start.sh

CMD /start.sh
