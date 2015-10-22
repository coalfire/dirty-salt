sysstat-package:
  pkg.installed:
    - name: sysstat

sysstat-service:
  service.running:
    - name: sysstat
    - enable: True
