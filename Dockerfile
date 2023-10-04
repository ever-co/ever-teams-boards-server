ARG NODE_OPTIONS
ARG NODE_ENV
ARG PORT
ARG CORS_ORIGIN

FROM node:12-alpine

LABEL maintainer="ever@ever.co"
LABEL org.opencontainers.image.source https://github.com/ever-co/ever-teams-boards-server

ENV CI=true

ENV NODE_OPTIONS=${NODE_OPTIONS:-"--max-old-space-size=2000"}
ENV NODE_ENV=${NODE_ENV:-production}
ENV PORT=${PORT:-80}
ENV CORS_ORIGIN=${CORS_ORIGIN}
ENV DEBUG=*

WORKDIR /excalidraw-room

COPY package.json yarn.lock ./
RUN yarn

COPY tsconfig.json ./
COPY src ./src
RUN yarn build

EXPOSE ${PORT}

CMD ["yarn", "start"]
