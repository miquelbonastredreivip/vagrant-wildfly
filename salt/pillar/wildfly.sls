#
# Custom pillar to fill the state to download and install Wildfly
#

galleon:
  lookup:
    extract_dir: /var/tmp
    galleon_dir: /var/tmp/galleon-4.2.8.Final
    download_url: https://github.com/wildfly/galleon/releases/download/4.2.8.Final/galleon-4.2.8.Final.zip
    download_hash: 63ccfb1546fbe32a2222b61e9ae0a594be5f81a4d6e45cd22861eb158a5bfb06
    layers: 
      - base-server

wildfly:
  lookup:
    wf_user: www-data
    wf_dir: /var/www/wildfly
    wf_index: /var/www/wildfly/index.php
    wf_zip: /var/www/wildfly/wildfly.zip
    wf_zip_content: /var/www/wildfly/src
    ps_install: /var/www/wildfly/install
    ps_extract_creates: /var/www/wildfly/src
    download_url: https://download.wildfly.com/download/releases/wildfly_1.7.6.1.zip
    download_hash: 8ecd63f7c8c374938175aa653f5ed426
    apache_url: http://127.0.0.1
    extract_url: http://127.0.0.1/index.php
    version_url: http://127.0.0.1/index.php?run=check-version
    install_url: http://127.0.0.1/install/
