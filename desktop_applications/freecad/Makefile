# bash ./podbox/podbox.sh security freecad off

setup:
	mkdir -p ~/data/freecad
	bash ../podbox/podbox.sh create freecad --gui --net --ipc
	bash ../podbox/podbox.sh exec freecad --root dnf install -y freecad
	bash ../podbox/podbox.sh map-user freecad on
	bash ../podbox/podbox.sh volume add freecad "${HOME}/data/freecad" --to /data --type rw
	bash ../podbox/podbox.sh read-only freecad on

run:
	bash ../podbox/podbox.sh exec freecad /usr/lib64/freecad/bin/FreeCAD

clean:
	bash ../podbox/podbox.sh remove freecad

.PHONY: setup run clean
