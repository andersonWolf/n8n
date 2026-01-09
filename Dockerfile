FROM n8nio/n8n:latest

USER root

# Debian/Ubuntu 用 apt-get 安裝 ffmpeg
RUN apt-get update && apt-get install -y --no-install-recommends ffmpeg \
    && rm -rf /var/lib/apt/lists/*

# 裝完切回 node
USER node
