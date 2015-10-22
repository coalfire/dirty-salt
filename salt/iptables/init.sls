{% from "iptables/map.jinja" import iptables with context %}

firewallpkgs:
  pkg:
    - installed
    - name: {{ iptables.package }}

ip4rulesfile:
  file.managed:
    - user: root
    - group: root
    - mode: 644
    - name: {{ iptables.rulesfile }}
    - source: salt://iptables/files/iptables

firewall-service:
  service:
    - running
    - name: {{ iptables.service }}
    - enable: true
    - watch: 
      - file: ip4rulesfile
    - require: 
      - pkg: firewallpkgs
