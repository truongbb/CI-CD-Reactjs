#!/bin/bash

echo "Revert source code!"
git checkout src
git checkout public
echo "Done!"

echo "Pulling new source version!"
git pull
echo "Done!"

echo "Shut down all!"
docker-compose -p app -f docker-compose.yml down
echo "Done!"

echo "Start build projects!"
docker-compose -p app -f docker-compose.yml build
echo "Done!"

echo "Up!"
docker-compose -p app -f docker-compose.yml up
echo "Done!"
