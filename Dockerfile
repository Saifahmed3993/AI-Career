# استخدام نسخة PHP مع Apache
FROM php:8.2-apache

# نسخ ملفات المشروع داخل مجلد الويب في السيرفر
COPY . /var/www/html/

# إعطاء صلاحيات مناسبة للملفات
RUN chown -R www-data:www-data /var/www/html \
    && chmod -R 755 /var/www/html

# فتح البورت 80 لتشغيل الموقع
EXPOSE 80


