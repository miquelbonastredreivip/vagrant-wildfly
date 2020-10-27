
extract_prestashop_package:
  archive.extracted:
    - name: {{ salt['pillar.get']('prestashop:lookup:ps_dir') }}
    - source: {{ salt['pillar.get']('prestashop:lookup:download_url') }}
    - source_hash: {{ salt['pillar.get']('prestashop:lookup:download_hash') }}
    - user: {{ salt['pillar.get']('prestashop:lookup:ps_user') }}
    - keep_source: false
    - enforce_toplevel: false
    - enforce_ownership_on: {{ salt['pillar.get']('prestashop:lookup:ps_dir') }}

