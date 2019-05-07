package 'apache2' do
	action :install
end

template '/etc/motd' do
	source 'motd.erb'
	action :create
end

service 'apache2' do
	action [ :enable, :start ]
end
