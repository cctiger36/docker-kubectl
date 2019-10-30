FROM alpine:3.10

RUN apk add --no-cache -t .build-deps curl \
 && rm -rf /var/cache/apk/* \
 && curl -sSL -o /usr/local/bin/kubectl https://storage.googleapis.com/kubernetes-release/release/v1.13.10/bin/linux/amd64/kubectl \
 && chmod +x /usr/local/bin/kubectl

CMD ["kubectl"]
