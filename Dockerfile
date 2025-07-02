FROM freqtradeorg/freqtrade:latest

# Copy config
COPY config.json /freqtrade/config.json

# Copy strategies if exists
COPY strategies/ /freqtrade/user_data/strategies/ 2>/dev/null || :

# Expose port
EXPOSE 8080

# Start bot
CMD ["freqtrade", "trade", "--config", "/freqtrade/config.json", "--strategy", "SimpleStrategy"]
