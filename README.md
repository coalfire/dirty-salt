# dirty-salt

A set of salt-states for making a very insecure operating system.

COALFIRE ASSUMES NO RISK FOR YOUR USE OF THIS PRODUCT.
THIS SHOULD NEVER BE DEPLOYED ON A PRODUCTION SYSTEM. 
IT IS DELIBERATELY BROKEN.
IT IS INTENDED FOR TESTING USE ONLY.
YOU HAVE BEEN WARNED.

I strongly recommend not putting this in a trusted network.

There are other, more comprehensive ways of making an insecure machine.
One example is 
[metasploitable](https://information.rapid7.com/metasploitable-download.html).

This set of states is primarily oriented toward adding services,
especially deprecated ones such as rsh.
It does perform a bit of misconfiguration,
such as enabling ssh protocol 1.

It is not well-tested - some of the states may fail.
Don't much maintenance on this project.

## Installation

`make install` will install the current stable version of salt-minion and
salt-master,
and make the minion use `localhost` as it's master.

`make salt` will symlink the `salt` directory to `/srv/salt`.

`make` or `make all` will do all of the above.

Or you can always just copy the states you want to your salt directory.

## Available States

`state.highstate` will add all of the bad stuff.
for individual `state.sls` states, see the `salt` directory.

## License
MIT.


