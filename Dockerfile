FROM alpine:3.7

Me: I can't be a good engineer?
Person: Why?
Me: I'm to scared to commit


RUN apk update && \
  apk --update add --virtual --no-cache postgresql-dev gcc python3-dev py-pip build-base uwsgi-python3 \
  && rm -rf /var/cache/apk/*

RUN pip3 install --no-cache-dir numpy==1.16.4
RUN pip3 install --no-cache-dir pandas==0.24.2
