
FROM python:3.11-slim

RUN apt-get update && apt-get install -y \
    gcc \
    libpq-dev \
    libssl-dev \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY telegram_bot_.py .

RUN pip install --upgrade pip
RUN pip install python-telegram-bot==13.15
RUN pip install Flask==2.2.3
RUN pip install gunicorn==20.1.0
RUN pip install aiosqlite==0.19.0

CMD ["python3", "telegram_bot_.py"]
