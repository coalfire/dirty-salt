svn-package:
  pkg.installed:
    - name: subversion

svn-service:
  service.running:
    - name: svnserve
    - enable: True
