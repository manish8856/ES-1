execute " add_java#{node['java']['version']}_repo " do 
  command "sudo add-apt-repository -y ppa:webupd#{node['java']['version']}team/java "
end
execute "update_apt" do
  command "sudo apt-get update"
end
execute "install_java" do
  command "sudo apt-get -y install oracle-java#{node['java']['version']}-installer" 
end
