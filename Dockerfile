FROM nginx

# Use o comando abaixo para substituir a config padrao
# RUN rm /etc/nginx/nginx.conf /etc/nginx/conf.d/default.conf

COPY www /usr/share/nginx/html
COPY conf /etc/nginx