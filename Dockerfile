# Use the official Invoice Ninja all-in-one (nginx + php-fpm + supervisord)
FROM invoiceninja/invoiceninja:5.9.5

# Ensure we can fix permissions at startup
USER root

# Add our startup script
COPY start.sh /start.sh
RUN chmod +x /start.sh

# Use our script as the default command
CMD ["/bin/sh", "/start.sh"]
