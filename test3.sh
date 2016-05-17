sudo wget -O ~/project/chef_12.9.41-1_i386.deb https://packages.chef.io/stable/ubuntu/10.04/chef_12.9.41-1_i386.deb
sudo dpkg -i ~/project/chef/chef_12.9.41-1_i386.deb

sudo chef-solo -c ~/project/solo.rb -j ~/project/solo.json
