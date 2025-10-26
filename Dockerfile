# Extend the official n8n image
FROM n8nio/n8n:latest

# Switch to root to install packages
USER root

# Create custom node modules directory and install there
RUN mkdir -p /home/node/.n8n/custom-extensions && \
    cd /home/node/.n8n/custom-extensions && \
    npm init -y && \
    npm install youtube-transcript && \
    chown -R node:node /home/node/.n8n

# Switch back to node user
USER node
