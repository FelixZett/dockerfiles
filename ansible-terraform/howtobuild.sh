#!/bin/bash
echo "INFO: Building felixzett/ansible-terraform..." &&
echo "INFO: Looking for newest Terraform version..." &&
VERSION=$(curl --silent "https://api.github.com/repos/hashicorp/terraform/releases/latest" | grep -Po '"tag_name": "\K.*?(?=")')
VERSION=${VERSION:1} &&
echo "INFO: Latest version is $VERSION" &&
echo "INFO: Building image..." &&
docker build --build-arg VERSION=$VERSION -t felixzett/ansible-terraform:$VERSION . &&
docker push felixzett/ansible-terraform:$VERSION
docker tag felixzett/ansible-terraform:$VERSION felixzett/ansible-terraform:latest &&
docker push felixzett/ansible-terraform:latest &&
echo "INFO: felixzett/ansible-terraform DONE"
