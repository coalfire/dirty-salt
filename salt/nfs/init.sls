nfs-package:
  pkg.installed:
    - name: nfs-utils

nfs-service:
  service.running:
    - name: nfs
    - enable: True
