{% from "unbound/map.jinja" import map with context %}

unbound:
  pkg.installed:
    - pkgs: {{ map.pkgs|json }}
  service.running:
    - name: {{ map.service }}
    - enable: True
    - reload: True

unbound_srv:
  service.running:
    - name: {{ map.service }}
    - enable: True
    - reload: True

