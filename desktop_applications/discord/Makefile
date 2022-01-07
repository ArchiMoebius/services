# bash ./podbox/podbox.sh security discord off

setup:
	mkdir -p ~/data/19_Tools/discord
	bash ../podbox/podbox.sh create discord --gui --net --ipc
	bash ../podbox/podbox.sh exec discord --root dnf install -y https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$$(rpm -E %fedora).noarch.rpm
	bash ../podbox/podbox.sh exec discord --root dnf update -y
	bash ../podbox/podbox.sh exec discord --root dnf install -y discord
	bash ../podbox/podbox.sh map-user discord on
	bash ../podbox/podbox.sh volume add discord "${HOME}/data/19_Tools/discord" --to /data --type rw
	bash ../podbox/podbox.sh read-only discord on

run:
	bash ../podbox/podbox.sh exec discord Discord

clean:
	bash ../podbox/podbox.sh remove discord

.PHONY: setup run clean
