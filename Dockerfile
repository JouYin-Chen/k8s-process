FROM node:16-alpine3.11
# FROM node:14

WORKDIR /app

COPY ./index.js /app/index.js
COPY ./config.js /app/config.js
COPY ./package.json /app/package.json
COPY ./package-lock.json /app/package-lock.json

ARG GIT_COMMIT_SHA
ENV GIT_COMMIT_SHA ${GIT_COMMIT_SHA}

# RUN chmod u+x /app/index.js

# COPY ["package.json", "index.js", "package-lock.json", "config.js"]
# RUN SHARP_IGNORE_GLOBAL_LIBVIPS=1 npm install --arch=x64 --platform=linux sharp

RUN npm install 

EXPOSE 3000

CMD npm run start
