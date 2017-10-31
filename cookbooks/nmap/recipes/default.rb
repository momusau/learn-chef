#
# Cookbook:: nmap
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

apt_update 'Update the apt cache daily' do
  frequency 86_400
  action :periodic
end


      execute "install-nmap-version-6-x86_64" do
        command "rpm -Uvh http://nmap.org/dist/nmap-6.00-1.x86_64.rpm"
        action :run
        not_if "nmap --version |grep 6.00"
      end
