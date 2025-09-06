FROM n8nio/n8n:latest

USER root

# Install ffmpeg
RUN apk update && apk add --no-cache ffmpeg

# Switch back to node user (important: use 'node' not 'root')
USER node

