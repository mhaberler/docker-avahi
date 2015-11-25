build:
	docker build -t mhaberler/docker-avahi .

install:
	sudo coreos-cloudinit --from-file avahi.cloud-init
