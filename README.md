## Prerequisite
Install the [rclone docker volume plugin](https://rclone.org/docker/#getting-started). Follow until the 'Create volume' part, this part and any part afterwards should be skipped.

## Setup
First time setup will require you to run the service at least once so you can open Sonarr and Radarr to get the API keys, after obtaining both keys you must shut down the service and add those to the `.env` and rebuild the configs.

- `cp .env.example .env`
- Edit `.env` and enter the values

In most cases you can leave the ports alone and just fill the tokens.

## Running
- Run `./build.sh` (This command only needs to be executed after changing your `.env`)
- `cd build` and run `docker compose up`

!!! Always run `docker compose up` from the build directory
