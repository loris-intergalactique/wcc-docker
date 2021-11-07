FROM debian:11-slim

LABEL description="Lightweight WCC container"

RUN set -ex \
    && apt update -y \
    && apt install -y \ 
        wcc

RUN adduser --gecos "" --disabled-password wizard
USER wizard
WORKDIR /home/wizard

CMD ["./wcc"]
