openvpn-package:
  pkg.installed:
    - name: openvpn

openvpn-service:
  service.running:
    - name: openvpn
    - enable: True
