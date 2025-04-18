FROM node:16

WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install Node.js dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose the port your application listens on
EXPOSE 3005

# Command to run your application
CMD ["node", "index.js"]