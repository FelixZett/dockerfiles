#!/bin/bash
echo "INFO: Building felixzett/hugo..."
echo "INFO: Looking for newest Hugo version..."
VERSION=$(curl --silent "https://api.github.com/repos/gohugoio/hugo/releases/latest" | grep -Po '"tag_name": "\K.*?(?=")')
VERSION=${VERSION:1}
echo "INFO: Latest version is $VERSION"
echo "INFO: Building image..."
docker build --build-arg VERSION=$VERSION -t felixzett/hugo:$VERSION .

docker push felixzett/hugo:$VERSION

docker tag felixzett/hugo:$VERSION felixzett/hugo:latest

docker push felixzett/hugo:latest

echo "INFO: felixzett/hugo DONE"

