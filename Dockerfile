FROM freqtradeorg/freqtrade:latest

WORKDIR /freqtrade

COPY config.json .

EXPOSE 8080

CMD ["freqtrade", "webserver", "--config", "config.json"]
