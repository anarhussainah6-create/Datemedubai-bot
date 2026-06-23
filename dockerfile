FROM python:3.11-slim

# Install system dependencies needed for asyncpg and aiohttp
RUN apt-get update && apt-get install -y \
    gcc \
    libpq-dev \
    libssl-dev \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app
COPY . .

RUN pip install --no-cache-dir -r requirements.txt

CMD ["python3", "telegram_bot_.py"]
