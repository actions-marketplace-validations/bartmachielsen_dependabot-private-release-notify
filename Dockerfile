FROM python:3-slim

MAINTAINER Bart Machielsen <bartmachielsen@gmail.com>
ENV PYTHONUNBUFFERED=1

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]