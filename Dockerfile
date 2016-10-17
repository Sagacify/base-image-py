FROM python:3.5

ENV LC_ALL en_US.UTF-8

RUN apt-get update \
      && apt-get install -y \
        gfortran \
        libopenblas-base \
        libatlas-base-dev \
      && apt-get clean \
      && pip3 install -U pip \
        flake8 \
        flake8-quotes \
        pylint \
        pytest-watch \
        pytest-coverage \
        numpy \
        scipy \
        scikit-learn \
        flask \
        sagaconfig \
        sagalogger

WORKDIR /www/app
