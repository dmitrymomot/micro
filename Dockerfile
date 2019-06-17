# Image with necessary dependencies
FROM golang:alpine AS container
RUN apk update && apk upgrade && \
    apk add --no-cache bash git openssh curl ca-certificates
RUN mkdir -p /source
WORKDIR /source
ENV GO111MODULE=on
COPY go.mod .
COPY go.sum .
RUN go mod download

# Go application health checker builder
FROM container AS builder
COPY . .
RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -a -installsuffix cgo -ldflags '-w' -i -o /micro ./main.go ./plugins.go

# Run go application
FROM alpine
RUN apk add --update ca-certificates && \
    rm -rf /var/cache/apk/* /tmp/*
WORKDIR /
COPY --from=builder /micro /
ENTRYPOINT [ "/micro" ]