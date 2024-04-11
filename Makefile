IMAGE_TAG := image_name

image:
	docker build -t image_name .

all: 
	linux

clean:
	docker rmi ${IMAGE_TAG}

linux: 
	GOOS=linux GOARCH=amd64 go build -o app-linux

arm: 
	GOOS=linux GOARCH=arm64 go build -o app-arm

macos: 
	GOOS=darrwin GOARCH=amd64 go build -o app-macos

windows: 
	GOOS=windows GOARCH=amd64 go build -o app-windows.exe


.PHONY: 
	linux arm macos windows
