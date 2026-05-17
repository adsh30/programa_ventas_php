<?php
// Configuración global de recursos para producción
ini_set('memory_limit', '256M'); // Eleva la RAM de 128MB a 256MB para todo el sistema
set_time_limit(300);             // Evita que los reportes se corten por tiempo limite (5 minutos)

define('BASE_URL', 'https://programa-ventas-php.onrender.com/');
define('HOST', 'bb0lbm0fo7ptuildo9ut-mysql.services.clever-cloud.com');
define('USER', 'uepi5fg2f4oq1yzf');
define('PASS', 'SBuMxIOA5pMmpk8l91k9');
define('DBNAME', 'bb0lbm0fo7ptuildo9ut');
define('CHARSET', 'utf8');
define('TITLE', 'IngShop');
define('MONEDA', '$');
define('HOST_SMTP', 'smtp.gmail.com');
define('USER_SMTP', 'pcorreo940@gmail.com');
define('CLAVE_SMTP', 'dunayfmobjzatpsg');
define('PUERTO_SMTP', 587);
