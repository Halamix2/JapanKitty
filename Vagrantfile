require 'json'
require 'yaml'
require_relative 'OS'

VAGRANTFILE_API_VERSION ||= "2"
confDir = $confDir ||= File.expand_path("./homestead", File.dirname(__FILE__))

#Homestead.yaml is not really used but it may be used in the future, probably will be the same as homestead_linux.yaml
if OS.windows?
    homesteadYamlPath = "Homestead_windows.yaml"
elsif OS.linux?
    homesteadYamlPath = "Homestead_linux.yaml"
else
    homesteadYamlPath = "Homestead.yaml"
end

homesteadJsonPath = "Homestead.json"
afterScriptPath = "after.sh"
aliasesPath = "aliases"

require File.expand_path(confDir + '/scripts/homestead.rb')

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
    if File.exists? aliasesPath
        config.vm.provision "file", source: aliasesPath, destination: "~/.bash_aliases"
    end

    if File.exists? homesteadYamlPath
        Homestead.configure(config, YAML.load(File.read(homesteadYamlPath)))
    elsif File.exists? homesteadJsonPath
        Homestead.configure(config, JSON.parse(File.read(homesteadJsonPath)))
    end

    if File.exists? afterScriptPath
        config.vm.provision :shell, path: afterScriptPath, run: 'always'
    end
end