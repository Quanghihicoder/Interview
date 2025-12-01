# Build Docker image
docker build -t interview-node .

# Run container
docker run -p 3000:3000 interview-node