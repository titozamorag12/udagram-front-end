# Use NodeJS base image
FROM node:13

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies by copying
# package.json and package-lock.json and ionic.config.json
COPY package*.json ./
COPY ionic.config.json ./

# Install dependencies
RUN npm ci

# Copy app source
COPY . .

# Bind the port that the image will run on
EXPOSE 4200

# Define the Docker image's behavior at runtime
CMD ["npm", "start"]
