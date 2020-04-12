FROM verdaccio/verdaccio:4.5.1

USER root

ENV NODE_ENV=production

RUN npm i && npm install verdaccio-aws-s3-storage

COPY ./config.yaml /verdaccio/conf

USER verdaccio
