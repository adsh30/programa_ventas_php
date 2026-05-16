FROM php:8.2-apache

# Instalar los controladores de MySQL que usa XAMPP (mysqli y pdo_mysql)
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Habilitar manejo de rutas avanzadas (por si acaso)
RUN a2enmod rewrite

# Copiar los archivos de tu proyecto al servidor
COPY . /var/www/html/

# Asegurar permisos de lectura en Linux
RUN chown -R www-data:www-data /var/www/html