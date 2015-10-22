{% from "apache/map.jinja" import apache with context %}

{{ apache.package }}:
  pkg.installed

{{ apache.service }}:
  service.running:
    enable: True
