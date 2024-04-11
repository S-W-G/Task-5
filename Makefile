LINUX_TAG := linux
ARM_TAG := arm
MACOS_TAG := macos
WINDOWS_TAG := windows

linux:
    @echo "Building for Linux..."

arm:
    @echo "Building for ARM..."

macos:
    @echo "Building for macOS..."

windows:
    @echo "Building for Windows..."

clean:
    @echo "Cleaning up..."
    docker rmi <IMAGE_TAG>
