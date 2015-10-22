{% from "ntpd/map.jinja" import ntpd with context %}

ntpd-package:
  pkg.installed: 
    - name: {{ ntpd.package }}

ntpd-service:
  service.running:
    - enable: True
    - name: {{ ntpd.service }}

