
Base setup of running avahi-daemon inside a container (needs dbus)

### Usage:

Run this:

	docker run -a stdin -a stdout -i -t  mhaberler/docker-avahi /bin/bash

then try 'avahi-browse --all'


