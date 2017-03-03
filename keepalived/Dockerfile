FROM alpine:3.5

RUN set -ex && \
    echo "http://mirrors.aliyun.com/alpine/v3.5/main" > /etc/apk/repositories && \
    echo "http://mirrors.aliyun.com/alpine/v3.5/community" >> /etc/apk/repositories && \
    apk --update add keepalived tzdata && \
    ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && \
    echo "Asia/Shanghai" > /etc/timezone && \
    rm -rf /var/cache/apk/

ENTRYPOINT ["/usr/sbin/keepalived"]