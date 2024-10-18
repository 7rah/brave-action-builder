FROM node:20

ARG VERSION

RUN apt update && apt install -y gperf sudo nano


RUN mkdir /brave-browser && chown -R node:node /brave-browser
USER node

RUN git clone --branch $VERSION --depth 1 https://github.com/brave/brave-core.git /brave-browser/src/brave

WORKDIR /brave-browser/src/brave

RUN npm install

RUN echo "is_brave_release_build=1" > .env

COPY patches /brave-browser/patches

RUN git apply /brave-browser/patches/no-history.patch

RUN npm run init

WORKDIR /brave-browser/src
RUN patch -p1 < /brave-browser/patches/optimize.patch

WORKDIR /brave-browser/src/brave
RUN patch -p1 < /brave-browser/patches/create_zip_dist.patch && \
    patch -p1 < /brave-browser/patches/allow_sidepanel_smaller.patch && \
    patch -p1 < /brave-browser/patches/hide_sidebar.patch && \
    patch -p1 < /brave-browser/patches/hide_horizontal_tabbar.patch
 