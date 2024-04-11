# Використання базового образу quay.io/projectquay/golang:1.20
FROM quay.io/projectquay/golang:1.20

# Копіюємо потрібні файли та виконуємо необхідні дії для тестування
COPY . /app
WORKDIR /app

# Команда для компіляції та запуску тестів
CMD ["go", "test"]
