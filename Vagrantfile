Vagrant.configure("2") do |config|

    config.vm.provider :virtualbox do |v|
        v.name = "basic"
        v.customize ["modifyvm", :id, "--memory", 1024]
    end

    config.vm.box = "ubuntu/trusty64"

    config.vm.boot_timeout = 350

    config.vm.provision "ansible" do |ansible|
        ansible.playbook = "ansible/playbook.yml"
    end

    config.vm.box_url = "https://vagrantcloud.com/ubuntu/trusty32/version/1/provider/virtualbox.box"

    config.vm.synced_folder "myfolder","/var/www/html/myfolder", owner: "www-data", group: "www-data"

    config.vm.network :private_network, ip: "192.168.33.99"

    config.ssh.forward_agent = true
end
