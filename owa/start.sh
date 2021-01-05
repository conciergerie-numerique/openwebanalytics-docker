#!/bin/sh -x

WORKDIR=/app

cd "${WORKDIR}" \
  && tar -xzf /data/owa.tar.gz --strip-components=1  \
  && composer install \
  && chown -R app-user:app-group "${WORKDIR}"
