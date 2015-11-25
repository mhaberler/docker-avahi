# based upon docker-avahi by Ian Blenke <ian@blenke.com>

FROM debian:jessie
MAINTAINER Michael Haberler <haberlerm@gmail.com>

RUN apt-get update -y
RUN DEBIAN_FRONTEND=noninteractive apt-get -qq install -y \
	avahi-daemon avahi-utils \
	dbus \
	rsyslog \
  && apt-get -qq -y autoclean \
  && apt-get -qq -y autoremove \
  && apt-get -qq -y clean

ADD avahi-daemon.conf /etc/avahi/avahi-daemon.conf


#RUN mkdir -p /var/run/dbus



ENTRYPOINT service rsyslog start && service dbus start \
 &&  avahi-daemon --no-drop-root --syslog --daemonize --debug && bash --login -i

