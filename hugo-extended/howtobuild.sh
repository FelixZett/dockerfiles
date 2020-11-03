#!/bin/bash
echo "INFO: Building felixzett/hugo-extended..."
echo "INFO: Looking for newest Hugo version..."
VERSION=$(curl --silent "https://api.github.com/repos/gohugoio/hugo/releases/latest" | grep -Po '"tag_name": "\K.*?(?=")')
VERSION=${VERSION:1}
echo "INFO: Latest version is $VERSION"
echo "INFO: Building image..."
docker build --build-arg VERSION="$VERSION" -t felixzett/hugo-extended:"$VERSION" . &&
docker push felixzett/hugo-extended:"$VERSION" &&
docker tag felixzett/hugo-extended:"$VERSION" felixzett/hugo-extended:latest &&
docker push felixzett/hugo-extended:latest
echo "INFO: felixzett/hugo-extended DONE"
