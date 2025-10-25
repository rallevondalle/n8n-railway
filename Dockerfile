# Extend the official n8n image
FROM n8nio/n8n:latest

# Switch to root to install packages
USER root

# Install the missing module
RUN npm install youtube-transcript

# Switch back to node user (n8n requires this)
USER node
