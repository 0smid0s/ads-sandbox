FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive
ENV PIP_NO_CACHE_DIR=1

RUN apt-get update -y && apt-get install -y \
    python3 python3-pip \
    tor torsocks \
    xvfb xauth \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY requirements.txt .
RUN pip3 install -r requirements.txt
RUN playwright install chromium && playwright install-deps

COPY . .
RUN chmod +x go_go.sh

CMD ["bash", "go_go.sh"]
