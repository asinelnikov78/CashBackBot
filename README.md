# CashBackBot 💰

[![Docker Image](https://img.shields.io/badge/docker-ready-blue)](https://hub.docker.com/)
[![Python 3.11](https://img.shields.io/badge/python-3.11-green)](https://www.python.org/)

Telegram бот для отображения кэшбэка по категориям из Excel файла.

## 📋 Функционал

- Загрузка Excel файла по HTTP с поддержкой авторизации
- Отображение категорий с автоматическими эмодзи
- Вывод кэшбэка по картам (сортировка от максимального к минимальному)
- Пагинация категорий
- Кэширование данных при каждом `/start`
- Поддержка локального конфига и переменных окружения

## 🚀 Быстрый старт

### Локальный запуск

```bash
# Клонирование репозитория
git clone https://github.com/YOUR_USERNAME/CashBackBot.git
cd CashBackBot

# Создание конфига
cp bot.conf.example bot.conf
# Отредактируйте bot.conf

# Установка зависимостей
pip install -r requirements.txt

# Запуск
python bot.py