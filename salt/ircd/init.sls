ircd-package:
  pkg.installed:
    - name: ircd-hybrid

ircd-service:
  service.running:
    - name: ircd
    - enable: True
