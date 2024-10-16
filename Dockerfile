FROM ubuntu

RUN apt update -y && apt install apache2 -y && apt install zip -y && apt install wget -y

RUN wget https://www.free-css.com/assets/files/free-css-templates/download/page296/carvilla.zip 

RUN unzip carvilla.zip -d /mnt

RUN cp -rvf /mnt/carvilla-v1.0/* /var/www/html/

EXPOSE 80

CMD [ "/usr/sbin/apache2ctl", "-D", "FOREGROUND" ]
