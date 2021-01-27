FROM golang:1.5.2 AS builder
ENV GO111MODULE=on \
CGO_ENABLED=0 \
GOOS=linux \
GOARCH=amd64 \
GOPATH=/build
WORKDIR /build/src/CICD_GO_test
COPY . .
RUN go build -o server .
RUN pwd && ls

FROM alpine
COPY --from=0 /build/src/CICD_GO_test/server /app/server
WORKDIR /app
ENTRYPOINT ["./server"]
