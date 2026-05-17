FROM php:8.2-apache

# Instalar dependencias del sistema requeridas para la extensión GD (imágenes)
RUN apt-get update && apt-get install -y \
    libpng-dev \
    libjpeg62-turbo-dev \
    libfreetype6-dev \
    && rm -rf /var/lib/apt/lists/*

# Configurar e instalar las extensiones de PHP (MySQL + GD)
RUN docker-php-ext-configure gd --with-freetype --with-jpeg \
    && docker-php-ext-install mysqli pdo pdo_mysql gd

# Habilitar el módulo rewrite de Apache
RUN a2enmod rewrite

# Copiar los archivos de tu proyecto al servidor
COPY . /var/www/html/

# Asegurar permisos de lectura y escritura en Linux
RUN chown -R www-data:www-data /var/www/html


