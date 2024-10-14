FROM php:8.2-apache-bullseye
RUN apt-get update && apt-get install -y --force-yes \
    apache2 \
    nano \
    vim \
    zip
# Install Composer globally
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
# add extention
#RUN apt-get update && apt-get install -y zip



# Add Composer to the PATH
ENV PATH="$PATH:/usr/local/bin"

# Entrypoint
COPY ./entrypoint.sh /usr/local/bin/entrypoint.sh
#COPY ./apache2-foreground /usr/local/bin/
RUN chmod +x /usr/local/bin/entrypoint.sh
ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]

EXPOSE 80
CMD ["apache2-foreground"]