smb-package:
  pkg.installed:
    - name: samba

smb-service:
  service.running:
    - name: smb
    - enable: True
