FROM node:12-alpine

WORKDIR /excalidraw-room

COPY package.json yarn.lock ./
RUN yarn

COPY tsconfig.json ./
COPY src ./src
RUN yarn build

ENV NODE_ENV=production
ENV DEBUG=*
ENV PORT=80

EXPOSE 80
CMD ["yarn", "start"]
