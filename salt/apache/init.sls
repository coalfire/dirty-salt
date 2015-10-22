{% from "apache/map.jinja" import apache with context %}

{{ apache.package }}:
  pkg.installed

{{ apache.service }}:
  service.running:
    enable: True
  #    watch:
    #    - file: {{ apache.config }}

#{{ apache.config }}:
  #  file.managed:
    #  - source: salt://apache/files/apache.conf
