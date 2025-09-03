# Use official Node.js 20 LTS image
FROM node:20

# Set working directory inside container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json first (for caching layers)
COPY package*.json ./

# Install dependencies
RUN npm install --production

# Copy the rest of the app source
COPY . .

# Expose port (change if your app runs on a different one)
EXPOSE 3000

# Run the app
CMD ["npm", "run", "start"]