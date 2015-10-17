# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
    config.vm.box = "ubuntu/trusty64"

    ### Solr/Fedora Port
    config.vm.network "forwarded_port", guest: 8983, host: 8983
    ### Rails Port
    config.vm.network "forwarded_port", guest: 3000, host: 3000
    ### http Port
    config.vm.network "forwarded_port", guest: 80, host: 8080

    config.vm.provision :shell, privileged: false, path: "bootstrap.sh"
    config.vm.provision :shell, privileged: false, path: "ruby.sh"

end
