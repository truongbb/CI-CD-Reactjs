#!/bin/bash

echo "-------------------------Shut down all!-------------------------"
docker-compose -p app -f docker-compose.yml down

echo "-------------------------Start build projects!-------------------------"
docker-compose -p app -f docker-compose.yml build

echo "-------------------------Up!-------------------------"
docker-compose -p app -f docker-compose.yml up -d
echo "-------------------------Done!-------------------------"
