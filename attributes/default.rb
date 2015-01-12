#
# Copyright 2015, Noah Kantrowitz
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

# Install from the static binary
default['docker']['install_type'] = 'binary'
default['docker']['version'] = 'latest'

# TLS for remote authentication
default['docker']['tlsverify'] = true
default['docker']['tlscacert'] = '/etc/docker_keys/ca.crt'
default['docker']['tlscert'] = '/etc/docker_keys/server.crt'
default['docker']['tlskey'] = '/etc/docker_keys/server.key'

# Bind to a socket
default['docker']['host'] = %w{tcp://0.0.0.0:443 unix:///var/run/docker.sock}
