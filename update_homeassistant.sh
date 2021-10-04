#!/bin/bash

docker-compose pull homeassistant
docker-compose stop homeassistant
docker-compose rm -f homeassistant
docker-compose up -d homeassistant