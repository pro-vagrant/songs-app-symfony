Songs for kids - Symfony application
====================================

How to run the application?

Clone the repo:

    $ git clone https://github.com/pro-vagrant/songs-app-symfony.git

Enter the directory:

    $ cd songs-app-symfony

Boot VM:

    $ vagrant up

Start your web browser and visit:

    http://127.0.0.1:8880

## How to install the box manually?

Due to the Vagrant's bug https://github.com/mitchellh/vagrant/issues/5449
checksums are verified only when you use `$ vagrant box add` command.

You can install the box manually using the command shown below:

    vagrant box add \
        --name symfony-v0.5.10 \
        --checksum-type sha256 \
        --checksum 526c5e25e95980f393febb7256eaf5c4fbb65e5ae049bbdfde5b40248878a350 \
        http://boxes.gajdaw.pl/symfony/symfony-v0.5.10.box

The above command verifies the checksum of a newly installed box.
