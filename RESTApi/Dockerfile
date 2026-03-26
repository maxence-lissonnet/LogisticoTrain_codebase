FROM python:3.11

LABEL "org.opencontainers.image.version"="1.0"
LABEL "org.opencontainers.image.authors"="Hugo Chauvet"
LABEL "org.opencontainers.image.description"="RestAPI du centre de maintenance"
LABEL "org.opencontainers.image.title"="restapi:1.0"

RUN apt-get update && apt-get install -y \
    gcc \
    default-libmysqlclient-dev \
    pkg-config \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

RUN chmod +x start-server.sh

RUN python -m compileall .

CMD ["./start-server.sh"]