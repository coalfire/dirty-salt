{% from "dhcp/map.jinja" import dhcp with context %}

dhcp-package:
  pkg.installed: 
    - name: {{ dhcp.package }}

dhcp-service:
  service.running:
    - enable: True
    - name: {{ dhcp.service }}
  #    - watch: 
    #    - file: dhcp-config

#dhcp-config:
#  file.managed:
#    - name: {{ dhcp.config }}
#    - source: salt://dhcp/files/httpd.conf

