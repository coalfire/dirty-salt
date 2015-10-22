# dirty-salt

A set of salt-states for making a very insecure operating system.

I do not recommend putting this in a trusted network.

## Installation

`make install` will install the current stable version of salt-minion and
salt-master,
and make the minion use `localhost` as it's master.

`make salt` will symlink the `salt` directory to `/srv/salt`.

`make` or `make all` will do all of the above.

## Available States

`ssh`: configure sshd in an insecure manner.
