Vagrant.configure(2) do |config|
  config.vm.box = "symfony-v1.0.0"
  config.vm.box_url = "http://boxes.gajdaw.pl/symfony/symfony-v1.0.0.box"
  config.vm.box_download_checksum_type = "sha256"
  config.vm.box_download_checksum = "5c3478eb8cd8ebe961c2670ea946f775f4bce13c7e23f443bdf1721e27e644fa"
  config.vm.network :forwarded_port, guest: 80, host: 8880, host_ip: "127.0.0.1"

  config.vm.provider "virtualbox" do |v|
    v.memory = 1024
  end

  config.vm.provision "shell", path: "initialize.bash", run: "always"
  config.vm.provision "shell", path: "reload.bash", run: "always"

  config.vm.post_up_message = "The application is available at http://127.0.0.1:8880"
end
