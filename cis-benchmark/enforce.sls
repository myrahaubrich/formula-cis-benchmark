# -*- coding: utf-8 -*-
# vim: ft=sls

{% from "cis-benchmark/map.jinja" import cis_benchmark with context %}

# if Amazon Linux 2
{% if grains['os'] == 'amzn2' %}

# comCloud
{% if grains['env']!= gov %}
include:
  - cis-benchmark.amzn2.enforce
# govCloud
{% else %}
include:
  - cis-benchmark.amzn2.enforceGov
{% endif %}

{% endif %}
