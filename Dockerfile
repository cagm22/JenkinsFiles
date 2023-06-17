FROM httpd:2.4

LABEL AUTHOR=cagm22
LABEL VERSION=0.1

COPY ./public-html/ /usr/local/apache2/htdocs/

WORKDIR /us/local/apache2

