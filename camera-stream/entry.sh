ENTRYPOINT ["/entry.sh"]
#!/bin/sh

/usr/bin/ssh -vvv -i /root/.ssh/id_rsa -o StrictHostKeyChecking=yes -o ServerAliveInterval=60 -o ExitOnForwardFailure=yes -nNT -L 0.0.0.0:1079:10.1.1.78:443 -L 0.0.0.0:554:10.1.1.78:554 pi@192.168.5.10
