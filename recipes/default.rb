#
# Copyright 2014, Noah Kantrowitz
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

include_recipe 'iptables'

iptables_rule 'ssh' do
  source 'iptables_ssh.erb'
end

iptables_rule 'docker' do
  source 'iptables_docker.erb'
end

directory '/etc/docker_keys' do
  owner 'root'
  group 'root'
  mode '700'
end

%w{
  /etc/docker_keys/ca.crt
  /etc/docker_keys/server.crt
  /etc/docker_keys/server.key
}.each do |path|
  cookbook_file path do
    owner 'root'
    group 'root'
    mode '600'
    source ::File.basename(path)
    sensitive true
  end
end

include_recipe 'docker'
