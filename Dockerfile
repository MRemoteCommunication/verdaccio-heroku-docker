FROM verdaccio/verdaccio:4.4.0

USER root

ENV NODE_ENV=production

RUN npm i && npm install verdaccio-github-oauth-ui

RUN npm i && npm install verdaccio-aws-s3-storage

COPY ./config.yaml /verdaccio/conf

USER verdaccio
