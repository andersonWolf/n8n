FROM n8nio/n8n:latest

USER root

# 從 Alpine 映像複製 ffmpeg
COPY --from=mwader/static-ffmpeg:7.1 /ffmpeg /usr/local/bin/
COPY --from=mwader/static-ffmpeg:7.1 /ffprobe /usr/local/bin/

# 確保有執行權限
RUN chmod +x /usr/local/bin/ffmpeg /usr/local/bin/ffprobe

USER node
