package 'tree' do 
  action :install
end

package 'ntp'

package 'git' 

file '/etc/motd' do
  content 'This server is the property of Naresh'
  owner 'ec2-user'
end

service 'ntpd' do 
  action [:enable, :start]
end


