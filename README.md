1. Create new GitGub token (packages ``read`` access)
2. ``export CR_PAT=${GITHUB_TOKEN}``
3. run ``docker-compose pull`` for get latest version of container
4. Run ``docker-compose up -d`` for run project
5. Edit ``/etc/hosts`` file. Add ``client.power.loc`` to ``127.0.0.1``.
6. Open browser ``client.power.loc``.
7. Backend address is ``api.power.loc``.
