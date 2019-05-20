FROM golang:1.12-alpine as builder

RUN apk add --no-cache git
RUN go get -v github.com/spf13/hugo

FROM alpine:latest
WORKDIR /go/bin
COPY --from=builder /go/bin/hugo .
ENV PATH=$PATH:/go/bin