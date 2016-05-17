IPADR="192.168.3.18"

sudo wget -O ~/test/chef/chef_12.9.41-1_i386.deb https://packages.chef.io/stable/ubuntu/10.04/chef_12.9.41-1_i386.deb
sudo dpkg -i ~/test/chef/chef_12.9.41-1_i386.deb

ssh-keygen -t rsa -f ~/.ssh/id_rsa
#cat ~/.ssh/id_rsa_new4.pub | ssh vagrant@192.168.3.18 'cat >> ~/.ssh/authorized_keys'
cat ~/.ssh/id_rsa.pub | ssh vagrant@"$IPADR" 'cat >> ~/.ssh/authorized_keys'
#scp ~/.ssh/id_rsa_new5 vagrant@192.168.3.18:~/.ssh/id_rsa_new5
ssh vagrant@"$IPADR" 'mkdir ~/test'
scp test1.sh vagrant@"$IPADR":~/test/test3.sh
ssh vagrant@"$IPADR" 'bash ~/test/test3.sh'

