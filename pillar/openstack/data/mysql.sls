mysql:
  server:
    # root_password: False - to have root@localhost without password
    root_password: 'bird storm shit stone valley'
    user: mysql
    # my.cnf sections changes 
    mysqld:
      bind-address: 0.0.0.0
      port: 3306
      log_bin: /var/log/mysql/mysql-bin.log
      auto_increment_increment: 5
      max_connect_errors: 4294967295
    mysql:
      # my.cnf param that not require value
      no-auto-rehash: noarg_present

  # Override any names defined in map.jinja
  lookup:
    server: mysql-server
    client: mysql-client
    service: mysql-service
    config: /etc/mysql/my.cnf
    python: python-mysqldb
