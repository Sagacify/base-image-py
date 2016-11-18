FROM python:3.5

ENV LC_ALL en_US.UTF-8

RUN apt-get update \
      && apt-get install -y \
        gfortran \
        libopenblas-base \
        libatlas-base-dev \
      && apt-get clean \
      && pip3 install -U pip \
        boto3==1.4.1 \
        flake8-quotes==0.8.1 \
        flake8==3.0.4 \
        Flask==0.11.1 \
        numpy==1.11.2 \
        pylint==1.6.4 \
        pytest-cov==2.4.0 \
        pytest-watch==4.1.0 \
        sagaconfig==0.0.4 \
        sagalogger==0.3.3

WORKDIR /www/app
