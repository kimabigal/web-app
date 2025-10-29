FROM node:20-alpine
WORKDIR /app/web
# copy only web package files first for better build caching
COPY web/package*.json ./
RUN npm ci --only=production
# now copy the rest of the app
COPY web/ .
ENV PORT=3000
EXPOSE 3000
CMD ["npm","start"]
