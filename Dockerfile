FROM node:12

# Set the working directory
# RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Copy the file from your host to your current location.
COPY package*.json ./

# Prevent User Interaction
# ENV DEVIAN_FRONTEND=noninteractive
# Set Environment to Production
# ENV NODE_ENV production

# Run the command inside your image filesystem
RUN npm install
# For Production
# RUN npm ci --only=prodoction

# Copy the rest of your app's source code from your host to your image filesystem
COPY . .

# Inform Docker that the container is listening on the specified port at runtime
EXPOSE 8080

# Run the specified command within the container
ENTRYPOINT ["node", "server.js"]

