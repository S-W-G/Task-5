FROM quay.io/projectquay/golang:1.20

FROM alpine:latest AS linux-test
COPY app-linux /usr/local/bin/app

FROM arm64v8/alpine:latest AS arm-test
COPY app-arm /usr/local/bin/app

FROM alpine:latest AS macos-test
COPY app-macos /usr/local/bin/app

FROM mcr.microsoft.com/windows/nanoserver:latest AS windows-test
COPY app-windows.exe C:\\app.exe