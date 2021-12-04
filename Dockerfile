#TODO: Change python version to equal that of the lab machines
ARG PYTHON_VERSION=3.10
FROM python:${PYTHON_VERSION}-alpine

COPY ./requirements.txt .
RUN pip install -r ./requirements.txt

RUN apk add --no-cache --virtual .build-deps \
  gcc \
  g++ \
  musl-dev

ARG RYU_VERSION=4.34
RUN pip install ryu==${RYU_VERSION}

RUN apk del .build-deps
