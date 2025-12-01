# Use official OpenJDK image
FROM openjdk:26-ea-slim

# Install Scala
RUN apt-get update && \
    apt-get install -y scala && \
    rm -rf /var/lib/apt/lists/*

# Set working directory
WORKDIR /usr/src/app

# Copy Scala file
COPY . .

# Compile and run
RUN scalac App.scala
CMD ["scala", "App"]
