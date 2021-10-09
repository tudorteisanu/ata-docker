### Run Frontend with local backend 
1. Create new GitGub token (packages ``read`` access)
2. ``export CR_PAT=${GITHUB_TOKEN}``
3. Login ``echo $CR_PAT | docker login ghcr.io -u USERNAME --password-stdin``
4. Add new block into your docker compose:
```
client:
    image: ghcr.io/powerit-dev/ata-client:master
    container_name: client
    environment:
      VIRTUAL_HOST: client.power.loc
    restart: always
    network_mode: bridge
```
5. run ``docker-compose pull`` for get latest version of container
6. Run ``docker-compose up -d`` for run project
7. Edit ``/etc/hosts`` file. Add ``client.power.loc`` to ``127.0.0.1``.
8. Open browser ``client.power.loc``.
9. Backend address is ``api.power.loc``.

**NOTE**
Docker container will be recreated on push: <b>master</b>.
