FROM node:20.4.0 AS base

# node docker is based on buildpack-deps no need to install anything

RUN npm install -g npm@9.8.1

WORKDIR /home/node/app
RUN mkdir -p /home/node/app/node_modules
RUN chown -R node:node /home/node/

FROM base AS dev

ENV NODE_ENV=development

USER node

COPY --chown=node:node ./dev/docker/entrypoint.sh /home/node/entrypoint.sh
RUN chmod +x /home/node/entrypoint.sh


ENTRYPOINT [ "/home/node/entrypoint.sh" ]
