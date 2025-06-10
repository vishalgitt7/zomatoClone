
FROM node:16-slim
WORKDIR /app
COPY . .
EXPOSE 3000 
CMD ["npm", "start"]
