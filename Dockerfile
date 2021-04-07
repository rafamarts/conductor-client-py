FROM alpine:latest

ARG CONDUCTOR_PY_VERSION=v2.31.1

ENV LC_ALL C.UTF-8
ENV LANG C.UTF-8

RUN apk update && apk add --update-cache python3 python3-dev py3-pip git
RUN pip3 install --upgrade pip
RUN apk add make automake gcc g++ subversion python3-dev
RUN ln -sf python3 /usr/bin/python

RUN git clone https://github.com/Netflix/conductor.git --branch $CONDUCTOR_PY_VERSION --single-branch
RUN cd conductor/client/python && python3 setup.py install