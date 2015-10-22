rwho-package:
  pkg.installed:
    - name: rwho

rwho-service:
  service.running:
    - name: rwhod
    - enable: True
