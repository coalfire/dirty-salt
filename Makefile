SALT = /srv/salt

install: install_salt.sh
	sh -x install_salt.sh -M stable

install_salt.sh:
	wget -O install_salt.sh  https://bootstrap.saltstack.com

salt: ${SALT}

${SALT}:
	ln -s "$$PWD/salt" $@
