FROM n8nio/n8n:latest

# Встановлюємо робочу директорію
WORKDIR /home/node/.n8n

# Експортуємо порт
EXPOSE 5678

# ЗАМІСТЬ CMD ВИКОРИСТОВУЄМО ENTRYPOINT
# Ця команда спочатку чекає 15 секунд, а вже потім запускає n8n
ENTRYPOINT ["/bin/sh", "-c", "sleep 15 && n8n"]
