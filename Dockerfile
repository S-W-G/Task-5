FROM quay.io/projectquay/golang:1.20 as builder

ARG OS
ARG ARCH

WORKDIR /app

COPY . .

RUN GOOS=${OS} GOARCH=${ARCH} go build -o app .

FROM scratch
COPY --from=builder /app/app /app
ENTRYPOINT ["/app"]
