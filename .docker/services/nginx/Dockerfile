FROM nginx:latest

ARG CERTDIR

# FOR SSL
# COPY $CERTDIR/fullchain.pem /etc/nginx/ssl/fullchain.pem
# COPY $CERTDIR/privkey.pem /etc/nginx/ssl/privkey.pem
# COPY /etc/nginx/conf.d/app.ssl.conf /etc/nginx/conf.d/app.conf

COPY /etc/nginx/conf.d/app.conf /etc/nginx/conf.d/app.conf
COPY /etc/nginx/snippets/ssl-params.conf /etc/nginx/snippets/ssl-params.conf

# Permission fix
RUN usermod -u 1000 www-data