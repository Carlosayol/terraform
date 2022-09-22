FROM nginx

COPY nginx.conf /etc/nginx/nginx.conf
COPY test.conf /etc/nginx/conf.d/test.conf

RUN mkdir -p /usr/share/nginx/html/hello
COPY index.html /usr/share/nginx/html/hello/index.html

EXPOSE 80