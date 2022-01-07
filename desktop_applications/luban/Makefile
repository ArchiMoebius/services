# bash ./podbox/podbox.sh security luban off

setup:
	mkdir -p ~/data/luban && wget -O ~/data/luban/snapmaker-luban-4.1.3-linux.x86_64.rpm https://github.com/Snapmaker/Luban/releases/download/v4.1.3/snapmaker-luban-4.1.3-linux.x86_64.rpm
	bash ../podbox/podbox.sh create luban --gui --net --ipc
	bash ../podbox/podbox.sh map-user luban on
	bash ../podbox/podbox.sh volume add luban "${HOME}/data/luban" --to /data --type rw
	bash ../podbox/podbox.sh exec luban --root dnf update -y
	bash ../podbox/podbox.sh exec luban --root dnf install -y mesa-dri-drivers
	bash ../podbox/podbox.sh exec luban --root dnf install -y /data/snapmaker-luban-4.1.3-linux.x86_64.rpm 
	#bash ../podbox/podbox.sh read-only luban on

run:
	bash ../podbox/podbox.sh exec luban /opt/Snapmaker\ Luban/snapmaker-luban

clean:
	bash ../podbox/podbox.sh remove luban

.PHONY: setup run clean
