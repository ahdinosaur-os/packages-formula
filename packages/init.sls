{% set packages = pillar.get('packages', []) %}
{% if packages is iterable %}

packages:
  pkg.installed:
    - names:
{%- for package in packages %}
      - {{ package }}
{%- endfor %}

{% endif %}