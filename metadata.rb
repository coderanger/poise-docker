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

name 'poise-docker'
version '0.0.1'
description 'Quickly deploy a Docker server with remote authentication'
long_description IO.read(File.expand_path('../README.md', __FILE__))
maintainer 'Noah Kantrowitz <noah@coderanger.net>'

depends 'docker'
depends 'iptables'
