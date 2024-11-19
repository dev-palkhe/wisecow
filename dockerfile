FROM debian:latest

RUN apt-get update && apt-get install -y \
    bash fortune cowsay netcat-openbsd \
    && apt-get clean

COPY wisecow.sh /wisecow.sh

RUN chmod +x /wisecow.sh

CMD ["/wisecow.sh"]
