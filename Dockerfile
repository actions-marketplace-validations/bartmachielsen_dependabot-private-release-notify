FROM python:3-slim

MAINTAINER Bart Machielsen <bartmachielsen@gmail.com>
ENV PYTHONUNBUFFERED=1

WORKDIR /app

#ADD requirements.txt /app
#RUN python3 -m pip install -r requirements.txt

ADD . /app

ENTRYPOINT ["/entrypoint.sh"]