FROM busybox:1.29

ARG HUGO_VERSION=0.48
RUN wget https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/hugo_${HUGO_VERSION}_Linux-64bit.tar.gz \
    && tar -zxvf hugo_${HUGO_VERSION}_Linux-64bit.tar.gz hugo -C /bin/ \
    && rm hugo_${HUGO_VERSION}_Linux-64bit.tar.gz

RUN addgroup hugo && adduser -H -D -G hugo hugo
USER hugo

CMD ["hugo", "version"]
