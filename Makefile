# Змінні для тегів образів
LINUX_TAG := linux
ARM_TAG := arm
MACOS_TAG := macos
WINDOWS_TAG := windows

.PHONY:
    all linux arm macos windows clean

# Збірка для різних платформ
all:
    linux arm macos windows

linux:
    @echo "Building for Linux..."
    # Команда для збірки для Linux

arm:
    @echo "Building for ARM..."
    # Команда для збірки для ARM

macos:
    @echo "Building for macOS..."
    # Команда для збірки для macOS

windows:
    @echo "Building for Windows..."
    # Команда для збірки для Windows

clean:
    @echo "Cleaning up..."
    # Команда для видалення новоствореного образу
    docker rmi <IMAGE_TAG>
