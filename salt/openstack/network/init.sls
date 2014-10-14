{% set host = salt['grains.get']('fqdn') -%}

{% if grains['os'] == 'Ubuntu' %}
/etc/network/interfaces:
  file.managed:
    - source: salt://network/etc/interfaces
    - user: root
    - group: root
    - mode: 644
    - template: jinja

networking:
  service:
    - running
    - enable: True
    - watch:
      - file: /etc/network/interfaces

ifenslave:
  pkg.installed
{% endif %}

