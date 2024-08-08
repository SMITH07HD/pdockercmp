FROM php:7.4-apache

# Instalar extensiones necesarias de PHP
RUN docker-php-ext-install mysqli

# Copiar código fuente
COPY ./src /var/www/html/

# Habilitar mod_rewrite de Apache
RUN a2enmod rewrite

# Configurar ServerName
RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf

EXPOSE 80

CMD ["apache2-foreground"]