ftpd-package:
  pkg.installed:
    - name: vsftpd

ftpd-service:
  service.running:
    - name: vsftpd
    - enable: True
    - watch: 
      - file: ftpd-config

ftpd-config:
  file.managed:
    - name: /etc/vsftpd/vsftpd.conf
    - source: salt://ftpd/files/vsftpd.conf

