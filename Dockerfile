FROM keymetrics/pm2:latest

COPY src src/
COPY package.json .
COPY pm2.json .

ENV NPM_CONFIG LOGLEVEL warn
RUN npm install --production

RUN ls -al -R
CMD [ "pm2-docker", "start", "pm2.json" ]