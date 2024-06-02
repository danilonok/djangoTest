FROM python:3.12.3

WORKDIR /app

RUN apt-get update && apt-get install -y netcat-traditional

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 8000

COPY ./entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

