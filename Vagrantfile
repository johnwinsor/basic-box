# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
    config.vm.provider "virtualbox" do |v|
        v.memory = 2048
    end

    config.vm.box = "ubuntu/trusty64"

    ### Solr/Fedora Port
    config.vm.network "forwarded_port", guest: 8983, host: 8983
    ### Rails Port
    config.vm.network "forwarded_port", guest: 3000, host: 3000
    ### http Port
    config.vm.network "forwarded_port", guest: 80, host: 8080

    config.vm.synced_folder "/Users/jwinsor/Dropbox/Mills/webstuff/julia", "/home/vagrant/julia"

    config.vm.provision :shell, privileged: false, path: "bootstrap.sh"
    config.vm.provision :shell, privileged: false, path: "ruby.sh"
    config.vm.provision :shell, privileged: false, path: "postgres.sh"

end
