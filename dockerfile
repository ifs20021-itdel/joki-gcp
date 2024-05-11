# Menggunakan image PHP dengan Apache yang sudah tersedia
FROM php:7.4-apache

# Mengaktifkan modul rewrite Apache
RUN a2enmod rewrite

# Menyalin file dan direktori proyek ke dalam image
COPY . /var/www/html/

# Mengatur hak akses untuk direktori
RUN chown -R www-data:www-data /var/www/html

# Menentukan port yang akan digunakan
EXPOSE 80

# Perintah untuk menjalankan Apache di foreground
CMD ["apache2-foreground"]
