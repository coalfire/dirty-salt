vnc-package:
  pkg.installed:
    - name: vnc-server

vnc-service:
  service.running:
    - name: vncserver
    - enable: True
