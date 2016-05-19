if [ "$(getconf LONG_BIT)" = 32 ];
then
        sudo wget -O ~/project/chef_12.9.41-1_i386.deb https://packages.chef.io/stable/ubuntu/10.04/chef_12.9.41-1_i386.deb
        sudo dpkg -i ~/project/chef_12.9.41-1_i386.deb
else
        sudo wget -O ~/project/chef_12.9.41-1_amd64.deb https://packages.chef.io/stable/ubuntu/10.04/chef_12.9.41-1_amd64.deb
        sudo dpkg -i ~/project/chef_12.9.41-1_amd64.deb
fi

sudo chef-solo -c ~/project/chef/solo.rb -j ~/project/chef/solo.json
