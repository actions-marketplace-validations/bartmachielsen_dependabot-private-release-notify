FROM python:3-slim

MAINTAINER Bart Machielsen <bartmachielsen@gmail.com>
ENV PYTHONUNBUFFERED=1

RUN apt-get update && apt-get install -y curl

COPY entrypoint.sh /entrypoint.sh
RUN chmod 755 entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]