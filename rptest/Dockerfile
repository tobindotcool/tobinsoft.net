FROM python:alpine AS build-stage
WORKDIR /app
RUN apk update && apk upgrade
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY src/ /app

FROM nginx:alpine-stable AS prod-stage
RUN mkdir /app
COPY --from=build-stage /app/rptest /app
COPY nginx.conf /etc/nginx/nginx.conf
