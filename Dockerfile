FROM node:14.18 as build 

WORKDIR /

COPY package*.json .

RUN yarn install

COPY . .

RUN yarn run build

FROM nginx:1.19

COPY ./nginx.conf /etc/nginx/nginx.conf
COPY --from=build /dist /usr/share/nginx/html