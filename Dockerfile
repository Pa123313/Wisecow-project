# Base image
FROM debian:12-slim

ENV DEBIAN_FRONTEND=noninteractive
ENV PORT=4499

# Install required packages + available fortunes
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
      bash \
      curl \
      netcat-openbsd \
      fortune-mod \
      fortunes \
      cowsay \
      socat \
      ca-certificates \
      dos2unix && \
    rm -rf /var/lib/apt/lists/*

# Add a non-root user
RUN useradd -m appuser

# Set working directory
WORKDIR /app

# Copy Wisecow script
COPY wisecow.sh /app/wisecow.sh

# Fix line endings and make executable
RUN dos2unix /app/wisecow.sh && chmod +x /app/wisecow.sh

# Ensure appuser owns the app folder
RUN chown -R appuser:appuser /app

EXPOSE 4499

USER appuser

# Start Wisecow service
CMD ["bash", "/app/wisecow.sh"]














