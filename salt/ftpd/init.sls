ftpd-package:
  pkg.installed:
    - name: vsftpd

ftpd-service:
  service.running:
    - name: vsftpd
    - enable: True

