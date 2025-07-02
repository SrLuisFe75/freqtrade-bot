FROM freqtradeorg/freqtrade:latest

# Copiar solo el archivo que SÍ existe
COPY config.json /freqtrade/config.json

# Exponer puerto
EXPOSE 8080

# Iniciar bot en modo webserver (más estable para Render)
CMD ["freqtrade", "webserver", "--config", "/freqtrade/config.json"]
