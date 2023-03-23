wildfly:
  lookup:
    wf_dir: /var/www/wildfly
    wf_index: /var/www/wildfly/index.php
    wf_zip: /var/www/wildfly/wildfly.zip
    wf_zip_content: /var/www/wildfly/src
    ps_install: /var/www/wildfly/install
    ps_extract_creates: /var/www/wildfly/src
    ps_user: www-data
    download_url: https://download.wildfly.com/download/releases/wildfly_1.7.6.1.zip
    download_hash: 8ecd63f7c8c374938175aa653f5ed426
    apache_url: http://127.0.0.1
    extract_url: http://127.0.0.1/index.php
    version_url: http://127.0.0.1/index.php?run=check-version
    install_url: http://127.0.0.1/install/

