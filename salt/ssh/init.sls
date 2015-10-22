{% from "ssh/map.jinja" import ssh with context %}

/etc/ssh/sshd_config:
  file.managed:
    - user: root
    - group: root
    - mode: 644
    - source: salt://ssh/files/sshd_config

ssh-service:
  service.running:
    - name: {{ ssh.service }}
    - enable: True
    - watch:
      - file: /etc/ssh/sshd_config
