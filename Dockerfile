# Docker image for JSON Server: Get a full fake REST API with zero coding in less than 30 seconds (seriously).
#
# URL: https://github.com/William-Yeh/docker-json-server
#
# Reference:  https://github.com/typicode/json-server
#
# Version     1.2
#

# pull base image
FROM node:10-alpine

RUN \
    echo "==> Install app..."                && \
    npm install -g --production json-server  && \
    \
    \
    echo "==> Remove unused temp..."         && \
    rm -rf /root/.npm                  \
           /usr/lib/node_modules/npm


RUN apk add --no-cache git && \
    git clone https://github.com/lalyos/fast-prototyping-with-ng-and-json-server.git app && \
    cd app/public && \
    npm install --production -g bower && \
    rm -rf /root/.npm                  \
           /usr/lib/node_modules/npm && \
    bower install --allow-root

WORKDIR /app/
# configure
EXPOSE 3000

RUN sed -i  "/\h1/ s/>.*</>${title:- New TITLE}</" public/index.html
# Define default command.
ENTRYPOINT ["json-server", "--host", "0.0.0.0"]
CMD ["issues.json"]
