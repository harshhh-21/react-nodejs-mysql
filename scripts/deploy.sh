#!/bin/bash

echo "Starting Deployment"

cd /home/ubuntu/react-nodejs-mysql

git pull origin master || git pull origin main

docker-compose down

docker-compose up -d --build

echo "Deployment Completed"
