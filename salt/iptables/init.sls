{% from "iptables/map.jinja" import iptables with context %}

firewallpkgs:
  pkg:
    - installed
    - name: {{ iptables.package }}


firewall-service:
  service:
    - dead
    - name: {{ iptables.service }}
    - enable: False
