# Use Node.js Alpine
FROM node:18-alpine

WORKDIR /app

# Copy package files
COPY package*.json ./

# Install npm dependencies
RUN npm install --production

# Copy rest of project
COPY . .

# Expose port
EXPOSE 3000

# Start ElizaOS agent using npm (npx)
CMD ["npx", "elizaos", "start", "-e", "CHARACTER=./kaizen.json"]
