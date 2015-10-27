# dirty-salt

## Introduction

A set of [salt-states](https://docs.saltstack.com/en/latest/topics/index.html)
for making a very insecure operating system.

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

With CentOS 5.4, Nexpose 5.17.4 found 287 vulnerabilities, 90 of them unique.

It is not well-tested - some of the states may fail.
Don't expect much maintenance on this project.

## Installation

### Get it
Spin up an older CentOS or RHEL release -- CentOS 5.4 is what I have used.

`sudo yum -y install git` (if necessary)

`git clone https://github.com/coalfire/dirty-salt`

If you have chosen a sufficiently out of date distro, 
you may be unable to clone due to outdated certs. 
If so, `yum --showduplicates list openssl` to find what versions of openssl
are available. 
Install a slightly newer one with, eg:
`yum install openssl-0.9.8e-27.el5_10.4`,
and try again.

Alternately, 
`export GIT_SSL_NO_VERIFY=1; git clone https://github.com/coalfire/dirty-salt`
*should* work, but I have not tested this.

### Install it

`cd dirty-salt && sudo make all` 

Alternately,

`sudo make install` will install the current stable version of salt-minion and
salt-master,
and make the minion use `localhost` as it's master.

`sudo make salt` will symlink the `salt` directory to `/srv/salt`.

Or you can always just copy the states you want to your salt directory.

## Available States

`sudo salt-call state.highstate` will add all of the bad stuff.
For individual `state.sls` states, see the `salt` directory.

## License
MIT.
