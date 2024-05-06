FROM node:14-slim AS builder

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install --only=production

COPY . .

RUN npm run build

FROM node:14-slim

WORKDIR /usr/src/app

COPY --from=builder /usr/src/app/package*.json ./
COPY --from=builder /usr/src/app/node_modules ./node_modules
COPY --from=builder /usr/src/app/build ./build
COPY --from=builder /usr/src/app/public ./public

EXPOSE 3000

CMD ["npm", "start"]
