FROM python:3.11-slim

RUN apt-get update && apt-get install -y gcc libpq-dev libssl-dev && rm -rf /var/lib/apt/lists/*

WORKDIR /app
COPY . .RUN pip install aiosqlite==0.19.0

RUN pip install --upgrade pip
RUN pip install --no-cache-dir -r requirements.txt
RUN pip install aiosqlite==0.19.0   # <-- added this line

CMD ["python3", "telegram_bot_.py"]
