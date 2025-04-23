# Stage 1: Build
FROM node:20-slim AS builder
WORKDIR /app

# System updates and tools
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y python3 make g++ && \
    rm -rf /var/lib/apt/lists/*

COPY package*.json ./
RUN npm ci --include=dev
COPY . .
RUN npm run build

# Stage 2: Production
FROM node:20-slim
WORKDIR /app

# Create non-root user
RUN useradd -m appuser && chown -R appuser:appuser /app
USER appuser

COPY --from=builder --chown=appuser:appuser /app/node_modules ./node_modules
COPY --from=builder --chown=appuser:appuser /app/build ./build
COPY --from=builder --chown=appuser:appuser /app/package*.json ./

HEALTHCHECK --interval=30s --timeout=3s \
  CMD curl -f http://localhost:3000 || exit 1

EXPOSE 3000
CMD ["npm", "start"]
