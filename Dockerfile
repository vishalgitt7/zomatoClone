FROM node:16-slim          # Uses the official Node.js 16 slim image as the base image (lightweight version)
WORKDIR /app               # Sets the working directory inside the container to /app
COPY . .                   # Copies all files from the current host directory into the container app directory
EXPOSE 3000                # Informs Docker that the container will listen on port 3000 (useful for documentation and networking)
CMD ["npm", "start"]       # Specifies the default command to run when the container starts, which is to start the Node.js app

