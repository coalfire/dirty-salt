# dirty-salt

A set of salt-states for making a very insecure operating system.

I do not recommend putting this in a trusted network.

There are other, more comprehensive ways of making an insecure machine.
One example is 
[metasploitable](https://information.rapid7.com/metasploitable-download.html).

## Installation

`make install` will install the current stable version of salt-minion and
salt-master,
and make the minion use `localhost` as it's master.

`make salt` will symlink the `salt` directory to `/srv/salt`.

`make` or `make all` will do all of the above.

Or you can always just copy the states you want to your salt directory.

## Available States

`ssh`: configure sshd in an insecure manner.
`telnet`: add a telnet server
`iptables`: open up your firewall to everything
