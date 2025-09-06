FROM n8nio/n8n:latest

USER root

# Install ffmpeg
RUN apk add --no-cache ffmpeg

USER node

# Expose port
EXPOSE 5678

# Start n8n
CMD ["n8n"]
