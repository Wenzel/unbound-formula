{% from "unbound/map.jinja" import map with context %}

include:
  - unbound

unbound_config:
  file.managed:
    - name: {{ map.config_file }}
    - source: {{ map.config_src }}
    - template: jinja
    - user: root
    - mode: 644
    - watch_in:
        - service: unbound
