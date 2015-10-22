{% from "apache/map.jinja" import apache with context %}

apache-package:
  pkg.installed: 
    - name: {{ apache.package }}

apache-service:
  service.running:
    - enable: True
    - name: {{ apache.service }}
