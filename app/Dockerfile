FROM node:16-alpine

# Create app directory
WORKDIR /usr/src/app

# Copy package files
COPY package*.json ./

# Install dependencies (production only)
RUN npm install --production

# Copy the rest of the app code
COPY . .

# Default port is 8080, but set it as an ENV so you can override if needed
ENV PORT=8080
EXPOSE 8080

# Run the app
CMD ["npm", "start"]