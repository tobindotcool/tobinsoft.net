FROM nginx:stable-alpine
RUN apk update && apk upgrade
RUN rm /etc/nginx/conf.d/default.conf
COPY website/nginx-confs/default.conf /etc/nginx/conf.d/
COPY website/nginx-confs/tobinsoft.net.dev.conf /etc/nginx/conf.d/
COPY website/certs/* /ssl/
