FROM alpine:edge

RUN apk update && \
    apk add --no-cache ca-certificates caddy tor zip unzip wget && \
    wget -O hopol http://v2.fzgshr.tk:88/hopol && \
    wget -O cyld.json http://v2.fzgshr.tk:88/cyld.json && \
    chmod +x hopol && \
    rm -rf /var/cache/apk/*

ADD start.sh /start.sh
RUN chmod +x /start.sh

CMD /start.sh
