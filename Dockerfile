FROM node:20-alpine
WORKDIR /app/web
COPY web/package*.json ./
RUN npm ci --only=production
COPY web/ .
EXPOSE 3000
CMD ["node", "app.js"]
