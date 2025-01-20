FROM registry.redhat.io/rhel9/nodejs-22-minimal@sha256:cfcd85547066bad599cdc945f8dff5a42bd0f02c7d87a39e91197b0bfdbe7a67

USER 0

COPY . /sources

WORKDIR /sources/yarn-install

RUN npm install

RUN ln -s $(realpath .)/node_modules/yarn/bin/yarn /usr/bin/yarn

WORKDIR /sources

RUN yarn install
