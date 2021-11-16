# See README.md for more info
c.ServerApp.allow_password_change = True
# from jupyter_server.auth import passwd; passwd()
c.ServerApp.password = 'generateme'
c.ServerApp.password_required = True