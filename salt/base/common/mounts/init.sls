{% set host = salt['config.get']('fqdn') -%}

{% for dev in salt['pillar.get'](host + ':mounts') %}
{{ salt['pillar.get'](host + ':mounts:' + dev + ':target') }}:
  mount.mounted:
    - device: {{ dev }}
    - fstype: {{ salt['pillar.get'](host + ':mounts:' + dev + ':fstype') }}
    - mkmnt: True
    - opts:
      - defaults
    - order: 100
{% endfor %}
