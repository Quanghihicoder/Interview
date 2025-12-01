# Use official Node.js LTS image
FROM node:20-alpine

# Set working directory
WORKDIR /usr/src/app

# Copy package.json (and package-lock.json if exists)
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy app files
COPY . .

# Expose port
EXPOSE 3000

# Start the app
CMD ["npm", "start"]
