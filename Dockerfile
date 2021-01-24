FROM golang:1.5.2 AS builder
ENV GO111MODULE on
ENV CGO_ENABLED 0
ENV GOOS linux
ENV GOARCH am64
ENV GOPATH /bulid
WORKDIR /bulid/src/CICD_GO_test
COPY . .
RUN go build -o server

FROM alpine
COPY --from=builder /build/src/CICD_GO_test/server /app/server
WORKDIR /app
ENTRYPOINT ["./server"]
