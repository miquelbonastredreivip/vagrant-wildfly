
include:
  - php
  - php.cli

apache:
  pkg.latest:
    - pkgs:
      - apache2
      - libapache2-mod-php

#Proper pas: instal·lar  mysql-server

Activar mòdul rewrite apache:
  apache_module.enabled:
    - name: rewrite
    - require:
      - pkg: apache

