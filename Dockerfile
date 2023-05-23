# Use Node image version from Docker Hub
FROM node:17-alpine

WORKDIR /app

# Copy package.json inside the container
COPY package.json .

# Install all dependencies
RUN npm install
RUN npm install -g serve

# Copy all source code
COPY . . 

# expose port 8080, port mentioned in vite.config file
EXPOSE 8080

# build the static files
RUN npm run build

# Use npm package called serve to serve the project in port 8080
# -s flag enables single-page application mode
# -l flag sets the listening port to 8080
# the dist folder contains the built files
CMD ["serve", "-s", "-l", "8080", "dist"]
