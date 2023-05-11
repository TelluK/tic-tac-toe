# Use Node image version from Docker Hub
FROM node:17-alpine

WORKDIR /app

# Copy package.json inside the container
COPY package.json .

# Install all dependencies
RUN npm install

# Copy all source code
COPY . . 

# expose port 8080, port mentioned in vite.config file
EXPOSE 8080

# CMD [ "npm", "run", "build"]
CMD [ "npm", "run", "dev"]
