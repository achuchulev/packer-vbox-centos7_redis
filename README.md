# Packer template to bake VirtualBox (vagrant) CentOS7-x86_64 box with Redis server

### Purpose
This repository stores a Packer template to build a Vagrant VirtualBox CentOS7-x86_64 box with Redis server

### Requirements
The following software must be installed/present on your local machine before you can use Packer to build the Vagrant box file:

* Packer
* VirtualBox (needed to build the VirtualBox box)
* Vagrant

### CentOS Packer Template:

* [template.json](https://github.com/achuchulev/packer-vbox-centos7_redis/blob/master/template.json)

### Download repo from source locally

Clone to repository locally: `git clone git@github.com:achuchulev/packer-vbox-centos7_redis.git`

### Build box

Go to the directory containing template.json file, and run:

`$ packer build template.json`

After a few minutes, Packer should tell you the box was generated successfully and print the name of the artifact.

> Example:

> ==> Builds finished. The artifacts of successful builds are:
> --> centos7-x86_64-vbox: 'virtualbox' provider box: builds/virtualbox-centos7-minimal.box

### Run box

* Add vagrant box: `vagrant box add --name redis-box builds/virtualbox-centos7-minimal.box`

* Initialize Vagrant: `vagrant init -m redis-box`

* Start vagrant box: `vagrant up`

* connect to redis-box: `vagrant ssh`
