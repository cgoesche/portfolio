FROM alpine@sha256:0a4eaa0eecf5f8c050e5bba433f58c052be7587ee8af3e8b3910ef9ab5fbe9f5 AS base
LABEL maintainer="Christian Goeschel Ndjomouo"
RUN apk update
RUN apk add nginx
RUN adduser -D -g 'www' www
RUN mkdir /www
RUN chown -R www:www /var/lib/nginx
RUN chown -R www:www /www
COPY index.html /www/index.html

WORKDIR /etc/nginx/ 
COPY nginx/nginx.conf nginx.conf
RUN mkdir conf.d/
WORKDIR /

FROM base AS portfolio-proxy
WORKDIR /etc/nginx/conf.d/
COPY nginx/default-nginx-proxy.conf default.conf
EXPOSE 80/tcp
CMD ["nginx","-g","daemon off;"]

FROM base AS portfolio-web
WORKDIR /etc/nginx/conf.d/
COPY nginx/default-nginx-web.conf default.conf
EXPOSE 8080/tcp
CMD ["nginx","-g","daemon off;"]
