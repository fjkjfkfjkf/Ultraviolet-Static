# Use the official Node.js 20 image as the base image
FROM node:20

# Set the working directory in the container  
WORKDIR /app

# Copy the package files to the container
COPY package*.json ./ 

# Install dependencies
RUN npm install

# Copy the rest of the application code to the container
COPY . .

# Serve built assets from Nginx
EXPOSE 8080
CMD ["npm", "start"]
