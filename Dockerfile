FROM tutum/lamp:latest

RUN rm -fr /app && git clone https://github.com/nilsteampassnet/TeamPass.git /app
RUN cd /app && git checkout 2.1.19
RUN chmod 777 /app/install/ /app/includes/ /app/files/ /app/upload/
RUN php5enmod mcrypt

EXPOSE 80 3306

CMD ["/run.sh"]
