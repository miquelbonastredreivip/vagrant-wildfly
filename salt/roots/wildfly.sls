
# extract_galleon_package:
#   archive.extracted:
#     - name: {{ salt['pillar.get']('galleon:lookup:extract_dir') }}
#     - source: {{ salt['pillar.get']('galleon:lookup:download_url') }}
#     - source_hash: {{ salt['pillar.get']('galleon:lookup:download_hash') }}
#     - user: {{ salt['pillar.get']('wildfly:lookup:wf_user') }}
#     - keep_source: false
#     - enforce_toplevel: false
#     - enforce_ownership_on: {{ salt['pillar.get']('galleon:lookup:extract_dir') }}
#     - unless:
#       - ls {{ salt['pillar.get']('galleon:lookup:galleon_dir') }}/* > /dev/null 2>&1
# install_wildfly:
# ToDo:
#  * Define installation command
#  * Convert to state logic; How to describe if installed
#  * jinja to flexibility:
#    - Installation directory
#    - Configurations
#    - Version
#    - Layers
#    - Feature packs
#galleon.sh install wildfly:current --dir=my-wildfly-server --default-configs=standalone/standalone.xml,domain/domain.xml

