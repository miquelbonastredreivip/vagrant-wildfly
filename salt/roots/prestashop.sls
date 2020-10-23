
include:
  - php
  - php.cli
  - apache
  - apache.config.modules.mod_rewrite
  - mysql
  - mysql.remove_test_database

extract_prestashop_package:
  archive.extracted:
    - name: /var/www/prestashop/
    - source: https://download.prestashop.com/download/releases/prestashop_1.7.6.1.zip
    - source_hash: 8ecd63f7c8c374938175aa653f5ed426
    - keep_source: false
    - enforce_toplevel: false

