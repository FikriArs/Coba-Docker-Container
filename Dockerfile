FROM ubuntu:20.04

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
    python3 \
    python3-pip \
    mysql-client \
    curl \
    vim \
    git \
    tzdata \
    locales \
    && apt-get clean

RUN echo "Asia/Jakarta" > /etc/timezone && \
    ln -sf /usr/share/zoneinfo/Asia/Jakarta /etc/localtime

WORKDIR /app

COPY . .

RUN if [ -f requirements.txt ]; then pip3 install -r requirements.txt; fi

EXPOSE 8000

CMD ["tail", "-f", "/dev/null"]
