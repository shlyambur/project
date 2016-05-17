apt_update 'Update the apt cache daily' do
	frequency 86_400
	action :periodic
end

package 'apache2'
package 'links'

service 'apache2' do
	supports :status => true
	action [:enable, :start]
end

node.set['net']['hostname'] = ''
#node['user']['name'] = 'vasya'
node.set['server']['username'] = 'user_name'

template 'var/www/html/index.html' do
	source 'index.html.erb'
end
