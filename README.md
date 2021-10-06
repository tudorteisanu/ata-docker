1. Create new GitGub token (packages ``read`` access)
2. ``export CR_PAT=${GITHUB_TOKEN}``
3. Login ``echo $CR_PAT | docker login ghcr.io -u USERNAME --password-stdin``
4. run ``docker-compose pull`` for get latest version of container
5. Run ``docker-compose up -d`` for run project
6. Edit ``/etc/hosts`` file. Add ``client.power.loc`` to ``127.0.0.1``.
7. Open browser ``client.power.loc``.
8. Backend address is ``api.power.loc``.
