# Extend the official n8n image
FROM n8nio/n8n:latest

# Switch to root to install packages
USER root

# Install the missing module
RUN cd /usr/local/lib/node_modules/n8n && npm install youtube-transcript

# Switch back to node user (n8n requires this)
USER node
