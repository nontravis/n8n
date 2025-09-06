FROM n8nio/n8n:latest

USER root

# Install ffmpeg
RUN apk add --no-cache ffmpeg

# Switch back to node user
USER node

# Set work directory
WORKDIR /home/node

# Expose n8n port
EXPOSE 5678

# Start n8n
CMD ["n8n", "start"]
