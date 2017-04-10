FROM php:7.1.3-apache

CMD mv /root/config/custom-config.conf /etc/apache2/sites-available
CMD a2ensite custom-config.conf
CMD a2dissite 000-default.conf
CMD service apache2 reload