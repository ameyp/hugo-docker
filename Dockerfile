FROM golang:1.12-alpine as builder

RUN apk add --no-cache git build-base
RUN mkdir $HOME/src && cd $HOME/src && git clone https://github.com/gohugoio/hugo.git
RUN cd $HOME/src/hugo && go install --tags extended

FROM alpine:latest
WORKDIR /go/bin
COPY --from=builder /go/bin/hugo .
COPY --from=builder /usr/lib/libgcc_s.so.1 /usr/lib/
COPY --from=builder /usr/lib/libstdc++.so.6 /usr/lib/
ENV PATH=$PATH:/go/bin