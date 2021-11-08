FROM node:14-alpine
ENV NODE_ENV=production
WORKDIR /usr/src/app
COPY . .
EXPOSE 8080
RUN npm cache clean --force \
    && npm i \
    && npm install --global http-server \
    && npm run build \
    && find * -maxdepth 0 -name 'build' -prune -o -exec rm -rf '{}' ';'
CMD http-server /usr/src/app/build --proxy http://localhost:8080?

