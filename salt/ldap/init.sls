ldap-package:
  pkg.installed:
    - name: openldap-servers

ldap-service:
  service.running:
    - name: ldap
    - enable: True
