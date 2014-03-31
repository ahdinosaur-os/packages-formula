{% set packages = pillar.get('packages', []) %}
{% if packages is iterable %}

packages:
  pkg.installed:
    - pkgs:
{%- for package in packages %}
      - {{ package }}:
{%- endfor %}

{% endif %}