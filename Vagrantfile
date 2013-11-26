Vagrant.configure("2") do |config|
  config.omnibus.chef_version = :latest
 config.vm.network "forwarded_port", guest: 8080, host: 8081
 config.vm.network "forwarded_port", guest: 8443, host: 8443
 # config.vm.network "public_network"

  config.berkshelf.enabled = true
  config.vm.hostname = "jasig-cas"
  config.vm.box = "centos_64"
  artifact_root = "http://artifacts.derby.ac.uk:8081/artifactory/"
  config.vm.box_url = artifact_root + "vagrant_boxes/vagrant_boxes/centos/6.4/centos-6.4-x86_64_vmware.box"
  config.vm.provider "vmware_workstation" do |v|
      v.vmx["memsize"] = "2048"
  end
  config.vm.provision :chef_solo do |chef|
    chef.run_list = ["recipe[jasig-cas::default]"]
    chef.log_level = :info
    chef.json = {
      "jasig" => {
        "cas" => {
          "cas-server-war" => artifact_root + "simple/software/jasig/cas-server-webapp/3.5.2/cas-server-webapp-3.5.2.war",
                 "user" => "cas",
                 "group" =>"cas"
        }
      },
      "java" => {
        "install_flavor" => "oracle",
        "jdk_version" => 6,
        "oracle" => {
          "accept_oracle_download_terms" => true
        }
      }
    }
  end
end
