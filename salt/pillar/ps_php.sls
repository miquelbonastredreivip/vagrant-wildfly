

#
# Dades que usarà php-formula per a configurar el php
#
php:
  # php-cli settings
  cli:
    # settings to manage the cli's php.ini
    ini:
      # contents of the php.ini file that are merged with defaults
      # https://www.php.net/manual/en/ini.list.php
      settings:
        PHP:
          memory_limit: '128M'      # https://www.php.net/manual/en/ini.core.php#ini.memory-limit
          max_input_vars: 10000     # https://www.php.net/manual/en/info.configuration.php#ini.max-input-vars
          #max_execution_time: 360  # https://www.php.net/manual/en/info.configuration.php#ini.max-execution-time

