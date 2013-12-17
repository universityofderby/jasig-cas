# Author:: Dan Webb (<d.webb@derby.ac.uk>)
# Cookbook Name:: jasig-cas
# Recipe:: default
#
# Copyright 2013 University of Derby
#
# Licensed under the Apache License, Version 2.0 (the 'License');
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an 'AS IS' BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and

include_recipe 'tomcat'
include_recipe 'simple_iptables'

# Create the required users
user node['jasig']['cas']['user']
group node['jasig']['cas']['group']

server_webapp  = node['jasig']['cas']['cas-server-war']

# Open required ports for our confiruation of Tomcat
simple_iptables_rule "http" do
    rule ["--proto tcp --dport 8443"] #TODO add this to the application cookbook
    jump "ACCEPT"
end

# Deploy CAS WAR file into Tomcat
remote_file server_webapp do
  # put the file in tomcat webapps
  path File.join node['tomcat']['webapp_dir'],'cas.war'
  source server_webapp
  mode 00750
  owner node['jasig']['cas']['user']
  group node['jasig']['cas']['group']
end
