{% from "telnetd/map.jinja" import telnetd with context %}

{{ telnetd.package }}:
  pkg.installed

