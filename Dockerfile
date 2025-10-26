# Extend the official n8n image
FROM n8nio/n8n:latest

# Switch to root to install packages
USER root

# Install using pnpm which n8n uses
RUN pnpm add -g youtube-transcript

# Switch back to node user
USER node
