# Base image - using alpine for optimization
FROM node:16-alpine

# Create app directory
WORKDIR /

# Copy both package.json AND package-lock.json
COPY ["package.json", "yarn.lock"]

# Install app dependencies
RUN yarn install --frozen-lockfile

# Bundle app source
COPY . .

# Creates a "dist" folder with the production build
RUN yarn build

# Optimize for prod
ENV NODE_ENV production

# Add user instruction for security risk
USER node

# Start the server using the production build
CMD [ "node", "dist/main.js" ]