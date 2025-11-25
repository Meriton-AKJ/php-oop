# PHP + MariaDB with PhpMyAdmin

## Pre-requisites

- Docker desktop

## Quick start

Fork and clone this project.

Go to your root directory.

```bash
cd ./path-to-your-project
```

Setup env variables.

```bash
cp ./.env.example .env
nano .env
```

Build image.

```bash
docker compose build
```

Run containers.

```bash
docker compose up -d
```

or for a better experience...

```bash
docker compose watch
```

Attach a shell.

```bash
docker compose exec server sh
```

Install the dependencies you want from inside the container.

```bash
docker compose run --rm composer require monolog/monolog
```

Your PHP application files go in the `src` directory.

## Available applications

- Apache + PHP application is exposed on the port ${PORT}
- PhpMyAdmin is available on the port 8080

## Setup and dependencies

The starter kit includes minimum bar metal setup. Feel free to include or fine tune your own setup:

- **Infrastructure related**: *Dockerfile* or *docker-compose.yaml*
- **Dependencies**: use `composer` service for PHP packages