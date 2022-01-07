[traefik](https://traefik.io/)

## Quick Start

0. Create the networks...

   ```bash
   docker network create -d bridge --attachable internal
   docker network create -d bridge --attachable external
   ```

1. Add the `FINGERPRINT` environment variable in the `.env` file (or just copy the one from smallstep-ca)

2. Run `docker-compose up -d`

3. Copy the root and intermediate certificates from the container to your host and add them to the hosts trust store. I installed Smallstep's CLI on my host and used it to install the certificates in my computers trust store. It packs them into a .pem file for me so I do not have to do this myself.

    `step-cli ca bootstrap --ca-url https://ca.tft:8443 --fingerprint <FINGERPRINT HERE> --install`