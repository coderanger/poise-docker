# poise-docker

Quickly create a Docker server for use with Test-Kitchen.

## tl;dr

```
git clone https://github.com/coderanger/poise-docker.git
cd poise-docker
make HOST=dockerhostname
```

## Options

* `HOST` – Required. The hostname of the machine that is being bootstrapped.
* `USER` – Optional, defaults to current username. Username for SSHing to the host.

## License

Copyright 2015, Noah Kantrowitz

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
