# Use the lightweight Alpine-based Node.js image
FROM node:16-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the package.json and package-lock.json files to the container
COPY package*.json ./

# Install dependencies, using npm with the Alpine package manager
RUN npm install --production

# Copy the rest of the application code to the container
COPY . .

# Expose the port that the app will listen on
EXPOSE 3000

# Command to run the application
CMD ["npm", "start"]
