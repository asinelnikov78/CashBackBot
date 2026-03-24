FROM python:3.11-slim

WORKDIR /app

# Установка системных зависимостей
RUN apt-get update && apt-get install -y \
    gcc \
    g++ \
    && rm -rf /var/lib/apt/lists/*

# Копирование зависимостей
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Копирование кода
COPY bot.py .

# Создание пользователя
RUN useradd -m -u 1000 botuser && chown -R botuser:botuser /app

# Создаем папку для сессий с правильными правами
# RUN mkdir -p /app/sessions && chown -R botuser:botuser /app/sessions && chmod 755 /app/sessions

USER botuser

# Запуск
CMD ["python", "-u", "bot.py"]
