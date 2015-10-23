SALT = /srv/salt

all: install salt

install: install_salt.sh
	sh -x install_salt.sh -M stable
	mkdir -p /etc/salt/minion.d
	echo 'master: localhost' >/etc/salt/minion.d/master.conf
	service salt-minion restart
	salt-key -y -A

install_salt.sh:
	wget -O install_salt.sh  https://bootstrap.saltstack.com

salt: ${SALT}

${SALT}:
	ln -s "$$PWD/salt" $@

.phony: all install salt
