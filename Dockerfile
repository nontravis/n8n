FROM n8nio/n8n:latest

USER root

# Install ffmpeg
RUN apk add --no-cache ffmpeg

# Switch back to node user (important: use 'node' not 'root')
USER node

# The n8n image already has the correct entrypoint
# Don't override CMD - let it use the default
