# Dockerfile CORRECTO basado en imagen oficial
FROM freqtradeorg/freqtrade:latest

# Copiar configuración
COPY config.json /freqtrade/config.json

# Exponer puerto
EXPOSE 8080

# SOLO el comando, sin "freqtrade" (ya está en ENTRYPOINT)
CMD ["webserver", "--config", "/freqtrade/config.json"]
