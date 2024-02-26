# Use an official Node.js runtime as a parent image
FROM node:16

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json files to the container
COPY package*.json ./

# Install Node.js dependencies
RUN npm install

# Copy application source code to the container
COPY . .

# Expose the port on which your Node.js application will run
EXPOSE 4000

# Command to run your Node.js application
CMD ["node", "index.js"]
