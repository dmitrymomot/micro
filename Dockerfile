FROM alpine
RUN apk add --update ca-certificates && \
	rm -rf /var/cache/apk/* /tmp/*
WORKDIR /
COPY micro /micro
ENTRYPOINT [ "/micro" ]
