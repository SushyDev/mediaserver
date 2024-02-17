## Prerequisite
Install the [rclone docker volume plugin](https://rclone.org/docker/#getting-started). Follow until the 'Create volume' part, this part and any part afterwards should be skipped.

## Setup
First time setup will require you to run the service at least once so you can open Sonarr and Radarr to get the API keys, after obtaining both keys you must shut down the service and add those to the `.env` and rebuild the configs.

- `cp .env.example .env`
- Edit `.env` and enter the values

In most cases you can leave the ports alone and just fill the tokens.
The port values are for the host (setting plex to port 1234 means you access plex on `localhost:1234`).
Default values are the same as docker's internal port mappings which are equal to the default ports of the respective services.

## Running
- Run `./build.sh` (This command only needs to be executed after changing your `.env`)
- `cd build` and run `docker compose up`

!!! Always run `docker compose up` from the build directory

## Info
The networking/ports of the containers are managed by docker internally, here is what you need to know

- `qdebrid:8080`
- `sonarr:9898`
- `radarr:7878`
- `prowlarr:9696`
Other services you probably never have to enter:
- `zurg:9999`
- `overseerr:5055`

What this means is that when you want to add the qdebrid download client to Radarr you must use `qdebrid` as the host and `8080` for the port, etc.
