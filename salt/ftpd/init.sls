vsftpd:
  pkg.installed
  service.running:
    - enable: True

