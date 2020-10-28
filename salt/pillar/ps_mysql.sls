mysql:
  server:
    root_password: ''
    user: mysql
  database:
    - prestashop
  user:
    prestashop:
      password: ~
      host: localhost
      databases:
        - database: prestashop
          grants: ['all privileges']
    
