FROM python:3.6.8-alpine3.8

ENV PYTHONUNBUFFERED 1

RUN apk add --no-cache --virtual .build-deps \
  ca-certificates gcc g++ \
  postgresql-dev linux-headers musl-dev \
  gettext gettext-dev \
  libffi-dev jpeg-dev zlib-dev \
  mailcap pcre-dev gzip \
  busybox-extras

RUN pip install --upgrade pip

RUN pip install pandas==1.1.5

RUN pip install django==2.2.16

RUN pip install django-compressor==3.1

RUN pip install django-libsass==0.7

RUN pip install uwsgi -I --no-cache-dir

EXPOSE 8000
