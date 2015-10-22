finger-package:
  pkg.installed:
    - name: finger-server

finger-service:
  service.running:
    - name: fingerd
    - enable: True
