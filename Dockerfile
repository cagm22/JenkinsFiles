# A simple web app served by httpd
FROM httpd:2.4

LABEL AUTHOR=user@example.com
LABEL VERSION=0.1

WORKDIR /us/local/apache2

COPY hello_world.html /usr/local/apache2/htdocs/
