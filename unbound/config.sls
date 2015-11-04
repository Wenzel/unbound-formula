{% from "unbound/map.jinja" import unbound with context %}

include:
  - unbound

unbound_config:
  file.managed:
    - name: {{ unbound.config_file }}
    - source: {{ unbound.config_src }}
    - template: jinja
    - user: root
    - mode: 644
    - watch_in:
        - service: unbound
