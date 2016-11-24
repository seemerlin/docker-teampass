FROM richarvey/nginx-php-fpm:stable

ENV path /app
ENV version 2.1.19

RUN apt-get update --fix-missing
RUN apt-get install -y vim git
RUN sed -i -e 's/root \/usr\/share\/nginx\/html/root \/app\/public/g' /etc/nginx/sites-enabled/default.conf
RUN sed -i -e 's/max_execution_time = 30/max_execution_time = 60/g' /etc/php5/fpm/php.ini
RUN php5enmod mcrypt

EXPOSE 80

