FROM n8nio/n8n:latest

# Ця команда виконується від імені root (за замовчуванням)
# Вона створює папку і одразу робить користувача 'node' її власником
RUN mkdir -p /home/node/.n8n && chown -R node:node /home/node/.n8n

# Тепер, коли права виставлені, переключаємося на менш привілейованого користувача 'node' для безпеки
USER node

WORKDIR /home/node/.n8n

# Expose the default n8n port
EXPOSE 5678

# Start n8n
CMD ["n8n", "start"]
