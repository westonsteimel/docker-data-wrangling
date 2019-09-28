FROM alpine:edge

RUN apk --no-cache add \
    ca-certificates \
    tesseract-ocr \
    curl \
    jq \
    pcre-tools \
    && addgroup wrangler \
    && adduser -G wrangler -s /bin/sh -D wrangler

USER wrangler

WORKDIR /home/wrangler

CMD [ "sh" ]
