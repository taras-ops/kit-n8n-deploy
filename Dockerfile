FROM n8nio/n8n:latest

WORKDIR /home/node/.n8n

# Expose the default n8n port
EXPOSE 5678

# Start n8n
CMD ["n8n", "start"]
