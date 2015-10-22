xinet-enable-all:
  cmd.run:
    - name; "sed -i 's/^\(\s*disable\s*= \)yes/\1no/' /etc/xinetd.d/*"
