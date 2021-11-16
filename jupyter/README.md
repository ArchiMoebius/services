See: [jupyter-server](https://jupyter-server.readthedocs.io/en/latest/operators/public-server.html)

1) docker-compose up
2) docker exec -it jupyter /bin/bash
3) jupyter server --generate-config
4) python3
5) from jupyter_server.auth import passwd; passwd()
6) update generated config and place in root directory (host dir.)
