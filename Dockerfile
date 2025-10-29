FROM node:18

WORKDIR /usr/src/app
COPY web/package*.json ./
RUN npm ci --omit=dev

# Copy source
COPY web/ ./

# not setting env here as per instructions
EXPOSE 3000
CMD ["npm","start"]