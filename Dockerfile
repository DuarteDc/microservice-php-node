# Usar una imagen base con PHP 5.6
FROM php:7.2-apache

# Instalar extensiones necesarias (ajusta según tus necesidades)
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Copiar el código de tu proyecto al contenedor
COPY . /var/www/html/

# Exponer el puerto 80 para acceder a la aplicación
EXPOSE 80

# Configurar el contenedor para iniciar Apache
CMD ["apache2-foreground"]
