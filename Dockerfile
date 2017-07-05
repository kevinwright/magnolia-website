FROM nginx
COPY etc/nginx.conf /etc/nginx/nginx.conf
RUN mkdir -p /var/log/app_engine
RUN mkdir -p /usr/share/nginx/www/_ah && \
    echo "health" > /usr/share/nginx/www/_ah/health
ADD www/ /usr/share/nginx/www/
RUN chmod -R a+r /usr/share/nginx/www
