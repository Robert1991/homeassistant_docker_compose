#!/bin/bash

docker-compose exec mosquitto sh -c "mosquitto_passwd /mosquitto/config/passwd $1"