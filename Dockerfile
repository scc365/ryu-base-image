#TODO: Change python version to equal that of the lab machines
ARG PYTHON_VERSION=3.9
FROM python:${PYTHON_VERSION}-alpine

COPY ./requirements.txt .
RUN pip install -r ./requirements.txt

RUN apk add --no-cache --virtual .build-deps \
  gcc \
  g++ \
  musl-dev

#TODO: remove this eventlet fix when no longer required
RUN pip install eventlet==0.30.2

ARG RYU_VERSION=4.34
RUN pip install ryu==${RYU_VERSION}

RUN apk del .build-deps

ENTRYPOINT [ "ryu-manager" ]
