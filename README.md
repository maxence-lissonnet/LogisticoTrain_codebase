# LogisticoTrain deployment bundle

This archive contains a production-oriented Docker Compose file, the nginx reverse-proxy config, the runtime config files for RESTApi and RealtimeAPI, and the WebSocket controller fix.

## Included files
- `docker-compose.yml`
- `vendorConfigurations/nginx.docker.conf`
- `secrets/restapi/config.py`
- `secrets/wsapi/application.properties`
- `RealtimeAPI/src/main/java/rtApi/controllers/RameAccessWSController.java`
- empty placeholders for `RESTApi/`, `RealtimeAPI/`, `app/`

## Notes
- Start the build profile once for the frontend build:
  `docker compose --profile build run --rm webapp`
- Then start the stack:
  `docker compose up -d`
- The admin tools are under the `dev-tool` profile.


## Troubleshooting
- If the frontend still tries to use an old `node_modules` binary, reset the named volume once: `docker compose down -v`.
- The `webapp` service now builds from `node:20-bullseye` and installs `python3`, `make`, and `g++` so `node-sass` can rebuild if needed.
