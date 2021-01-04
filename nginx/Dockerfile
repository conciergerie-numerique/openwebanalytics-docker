FROM nginx:1.19.6-alpine

RUN apk update \
    && apk --progress add tzdata

COPY ./nginx.conf /etc/nginx/nginx.conf
