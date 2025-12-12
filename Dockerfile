FROM n8nio/n8n:latest

# 切到 root 才能安裝套件
USER root

# Alpine 用 apk 安裝 ffmpeg
RUN apk update && apk add --no-cache ffmpeg

# 裝完切回 node
USER node
