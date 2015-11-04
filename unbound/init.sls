{% from "unbound/map.jinja" import unbound with context %}

unbound:
  pkg.installed:
    - pkgs: {{ unbound.pkgs|json }}
  service.running:
    - name: {{ unbound.service }}
    - enable: True
    - reload: True

