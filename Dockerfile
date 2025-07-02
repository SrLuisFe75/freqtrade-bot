FROM freqtradeorg/freqtrade:latest

COPY config.json /freqtrade/config.json

WORKDIR /freqtrade

EXPOSE 8080

ENTRYPOINT ["freqtrade"]
CMD ["webserver", "--config", "config.json", "--listen-ip-address", "0.0.0.0", "--listen-port", "8080"]
