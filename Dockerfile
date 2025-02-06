FROM ubuntu
RUN apt update
RUN apt install apache2 -y
RUN sudo systemctl start apache2
RUN sudo systemctl enable apache2
ADD . /var/www/html/
ENTRYPOINT apachectl -D FOREGROUND
