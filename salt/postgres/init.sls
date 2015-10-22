postgres-package:
  pkg.installed:
    - name: postgresql-server

postgres-service:
  service.running:
    - name: postgres
    - enable: True
