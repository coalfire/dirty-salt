tftp-package:
  pkg.installed:
    - name: tftp-server

tftp-service:
  service.running:
    - enable: True
    - name: tftp
