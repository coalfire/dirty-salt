rshd-package:
  pkg.installed:
    - name: rsh-server

rshd-service:
  service.running:
    - name: rshd
    - enable: True
