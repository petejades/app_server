# Use an official Node.js runtime as a parent image
FROM node:14-alpine

# Set the working directory to /app
WORKDIR /app

# Generate a new React application using create-react-app
RUN npx create-react-app my-app

# Change into the my-app directory
WORKDIR /app/my-app

# Edit the App.js file to display a custom message
COPY App.js src/App.js

#RUN npm run build

# Expose port 3000 to the Docker host
EXPOSE 3000

# Start the development server
CMD ["npm", "start"]
