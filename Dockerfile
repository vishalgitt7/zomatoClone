# Stage 1: Build
FROM node:20-slim AS builder
WORKDIR /app
COPY . .
EXPOSE 3000
CMD ["npm", "start"]
