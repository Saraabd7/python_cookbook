#
# Cookbook:: python_cookbook
# Recipe:: default
#
# Copyright:: 2020, The Authors, All Rights Reserved.

apt_update 'update_sources' do
  action :update
end


package 'python3.7' do
  action :install
end

package 'python3-pip' do
  options '--allow-unauthenticated'
  action :install
end

execute 'install python' do
  command 'sudo apt-get install python3.7 -y'
  action :run
end

execute 'install python3-pip' do
  command 'sudo apt-get install python3-pip -y'
  action :run
end

execute 'install requests' do
  command 'pip3 install requests'
  action :run
end

execute 'install bs4' do
  command 'pip3 install bs4'
  action :run
end

execute 'install configmanager' do
  command 'pip3 install configmanager'
  action :run
end

execute 'install pytest' do
  command 'pip3 install pytest'
  action :run
end

# file '/home/ubuntu/app/src/__init__.py' do
#   action :create
# end
#
# file '/home/ubuntu/app/src/csv_generators/__init__.py' do
#   action :create
# end
#
# file '/home/ubuntu/app/src/itjobswatch_html_readers/__init__.py' do
#   action :create
# end

directory '/' do
  action :create
  mode '0777'
end

directory '/vagrant/' do
  action :create
  mode '0777'
end

directory '/home/vagrant/downloads' do
  action :create
  mode '0777'
end

# execute 'install requirements' do
#   command 'pip3 install -r /home/ubuntu/app/requirements.txt'
#   action :run
# end
# sudo pip3 install -r /home/vagrant/app/requirements.txt

bash 'installing app requirements' do
  code <<-EOH
    sudo pip3 install -r /home/ubuntu/app/requirements.txt
  EOH
end
