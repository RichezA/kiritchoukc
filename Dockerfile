# FROM node:alpine as build-stage

# WORKDIR /tmp
# COPY package*.json /tmp/
# RUN npm install

# WORKDIR /usr/src/app
# COPY . /usr/src/app/
# RUN cp -a /tmp/node_modules /usr/src/app/
# RUN npm run build

# # Stage 1, based on Nginx, to have only the compiled app, ready for production with Nginx
# FROM nginx:alpine
# COPY --from=build-stage /usr/src/app/ /usr/share/nginx/html

# # Create logs directory
# RUN mkdir -p /home/dev/logs/

# # Remove default config
# RUN rm /etc/nginx/conf.d/default.conf
# # Copy custom config into the right folder
# COPY --from=build-stage /usr/src/app/nginx /etc/nginx/conf.d

FROM node:10.7

ENV APP_ROOT /src

RUN mkdir ${APP_ROOT}
WORKDIR ${APP_ROOT}
ADD . ${APP_ROOT}

RUN npm install
RUN npm run build

ENV HOST 0.0.0.0

CMD [ "npm", "run", "start" ]
