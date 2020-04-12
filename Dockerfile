FROM verdaccio/verdaccio:4.4.4

USER root

ENV NODE_ENV=production

RUN npm i && npm install verdaccio-aws-s3-storage

COPY ./config.yaml /verdaccio/conf

USER verdaccio
