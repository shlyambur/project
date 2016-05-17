cd ~/test
mkdir chef
cd chef
mkdir cookbooks

sudo wget -O ~/test/chef/chef_12.9.41-1_i386.deb https://packages.chef.io/stable/ubuntu/10.04/chef_12.9.41-1_i386.deb
sudo dpkg -i ~/test/chef/chef_12.9.41-1_i386.deb

#curl -L https://www.opscode.com/chef/install.sh | bash
sudo apt-get install -y git

sudo git clone https://github.com/shlyambur/new.git ~/test/chef/cookbooks/new
sudo git clone https://github.com/shlyambur/solo-cfg.git ~/test/chef/solo-cfg

cp ~/test/chef/solo-cfg/*.* ~/test/chef/

sudo chef-solo -c ~/test/chef/solo.rb -j ~/test/chef/solo.json
