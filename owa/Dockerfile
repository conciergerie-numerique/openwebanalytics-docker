FROM alpine:3.12.3 AS builder

ARG OWA_VERSION
ARG APP_UID
ARG APP_GID

RUN apk update \
    && apk --progress add su-exec \
    && apk --progress add shadow \
    && addgroup --gid ${APP_GID} app-group \
    && useradd --uid ${APP_UID} --gid app-group --shell /bin/sh app-user \
    && mkdir -p /data \
    && wget "https://github.com/Open-Web-Analytics/Open-Web-Analytics/archive/${OWA_VERSION}.tar.gz" -O /data/owa.tar.gz

COPY ./start.sh /start.sh
RUN chmod +x /start.sh

CMD [ "/bin/sh", "-c", "/start.sh" ]
