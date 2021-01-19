FROM golang:1.5.2 as builder
ENV GO111MODULE=on \
    CGO_ENABLED=0 \
    GOOS=linux \
    GOARCH=am64
WORKDIR /build
COPY . .
RUN go build -mod=vendor -o server .

FROM alpine
COPY --from=builder /build/server /app/server
WORKDIR /app
ENTRYPOINT ./server
