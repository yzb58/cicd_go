FROM golang:1.5.2 AS builder
ENV GO111MODULE=on \
    CGO_ENABLED=0 \
    GOOS=linux \
    GOARCH=am64
WORKDIR /go/src/CICD_GO_test
COPY . .
RUN ./make.bash --no-clean
RUN go build -o server .

FROM alpine
COPY --from=builder /go/src/CICD_GO_test/server /app/server
WORKDIR /app
ENTRYPOINT ["./server"]
