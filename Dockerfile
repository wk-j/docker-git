FROM alpine 
LABEL maintainer Bill Wang <ozbillwang@gmail.com>
RUN apk --update add git openssh && \
    rm -rf /var/lib/apt/lists/* && \
    rm /var/cache/apk/*
VOLUME /git
WORKDIR /git

RUN git config --global user.email "jwrocks14@gmail.com"

ENTRYPOINT ["git"]
CMD ["--help"]