# Use an official lightweight Node.js runtime as a parent image
FROM node:14-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json to leverage Docker cache
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose the port your application will run on (adjust if needed)
EXPOSE 3000

# Start the application in development mode
CMD ["npm", "run", "dev"]
