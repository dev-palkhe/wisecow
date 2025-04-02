FROM debian:latest

# Avoid interactive prompts during package installation
ENV DEBIAN_FRONTEND=noninteractive 

RUN apt-get update && apt-get install -y \
    bash fortune cowsay netcat-openbsd \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

COPY wisecow.sh /wisecow.sh

RUN chmod +x /wisecow.sh

# Expose the port your script is using
EXPOSE 4499

# Run the script (modify this if your script needs bash explicitly)
CMD ["/bin/bash", "/wisecow.sh"]
