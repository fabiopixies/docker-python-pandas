FROM alpine:3.7

RUN apk update && \
  apk --update add --virtual --no-cache postgresql-dev gcc python3-dev py-pip build-base uwsgi-python3 \
  && rm -rf /var/cache/apk/*

RUN pip3 install --no-cache-dir -r requirements.txt 
