# Use the official Node.js image as the base image
FROM node:16

# Set the working directory in the container to /app
WORKDIR /app

# Copy package.json and package-lock.json (if available) to the container
COPY package*.json ./

# Install dependencies in the container
RUN npm install

# Copy the rest of the application files to the container
COPY . .

# Expose port 3000 to the host machine
EXPOSE 3000

# Set the default command to run the application
CMD ["npm", "start"]
