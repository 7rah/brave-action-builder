FROM node:20

ENV VERSION="v1.60.27"

RUN apt update && apt install -y gperf sudo nano



RUN mkdir /brave-browser && chown -R node:node /brave-browser
USER node

ENV VERSION="v1.69.162"

RUN git clone --branch $VERSION --depth 1 https://github.com/brave/brave-core.git /brave-browser/src/brave

WORKDIR /brave-browser/src/brave

RUN npm install

RUN echo "is_brave_release_build=1" > .env

COPY no-history.patch .
RUN git apply no-history.patch

RUN npm run init