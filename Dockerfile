FROM node:13

WORKDIR /app

COPY . .

ENV NODE_ENV=production

RUN npm install --production --unsafe-perm

CMD ["npm", "start"]
