# Stage 1: Build stage
FROM node:14-slim AS builder

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install --only=production

COPY . .

RUN npm run build


# Stage 2: Production stage
FROM node:14-slim

WORKDIR /usr/src/app

COPY --from=builder /usr/src/app/package*.json ./
COPY --from=builder /usr/src/app/node_modules ./node_modules
COPY --from=builder /usr/src/app/build ./build

# Copy the index.js file from the source directory to the container
COPY --from=builder /usr/src/app/src/index.js ./index.js

EXPOSE 3000

CMD ["node", "index.js"]
