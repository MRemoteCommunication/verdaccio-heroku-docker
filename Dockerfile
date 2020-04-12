FROM verdaccio/verdaccio:3

USER root

ENV NODE_ENV=production

RUN yarn && yarn add verdaccio-github-oauth-ui

RUN yarn && yarn add verdaccio-s3-storage

COPY ./config.yaml /verdaccio/conf

USER verdaccio
