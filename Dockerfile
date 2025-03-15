# Use the base Java dev container image
FROM mcr.microsoft.com/devcontainers/java:1-17

# Install Maven
RUN apt-get update && \
    apt-get install -y maven && \
    rm -rf /var/lib/apt/lists/*

# Set the working directory
WORKDIR /workspace

# Keep the container running
CMD ["sleep", "infinity"]

## to start postgres
# docker-compose up -d