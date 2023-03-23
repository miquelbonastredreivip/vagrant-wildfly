mysql:
  server:
    root_password: ''
    user: mysql
  database:
    - wildfly
  user:
    wildfly:
      password: ~
      host: localhost
      databases:
        - database: wildfly
          grants: ['all privileges']
    
