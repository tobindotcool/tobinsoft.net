FROM nginx:stable-alpine
RUN apk update \
    && apk upgrade \
    && apk add alpine-conf
RUN setup-timezone -z America/New_York
RUN rm /etc/nginx/conf.d/default.conf
COPY nginx-confs/default.conf /etc/nginx/conf.d/
COPY nginx-confs/tobinsoft.net.conf /etc/nginx/conf.d/
