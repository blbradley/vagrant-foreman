vagrant-puppet-dev
==================

Boilerplate for getting started with Vagrant and Puppet.

Setup
-----

  - Find a box or build one with [Veewee](https://github.com/jedi4ever/veewee).
  - Add your box with `vagrant box add <boxname> <path or url>`
  - Set the boxname you chose above in the `Vagrantfile`.
  - Use [librarian-puppet](https://github.com/rodjek/librarian-puppet) or [r10k](https://github.com/adrienthebo/r10k) to process your `Puppetfile`.
  - `vagrant up`

License
-------

MIT

Requirements
------------

  - [Vagrant](http://www.vagrantup.com/)
  - [librarian-puppet](https://github.com/rodjek/librarian-puppet) or [r10k](https://github.com/adrienthebo/r10k)
