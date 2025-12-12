# 以官方 n8n image 為基底
FROM n8nio/n8n:latest

# 先切到 root 才能安裝套件
USER root

# 官方 image 現在是 Debian/Ubuntu 系列，用 apt 安裝 ffmpeg
RUN apt-get update \
  && apt-get install -y ffmpeg \
  && rm -rf /var/lib/apt/lists/*

# 裝完再切回原本的 node 使用者
USER node
