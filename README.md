# Dockerfiles
[![Build Status](https://travis-ci.com/FelixZett/dockerfiles.svg?branch=master)](https://travis-ci.com/FelixZett/dockerfiles)

This repository contains my public dockerfiles and scripts to automatically build them. The images are generally structured to be built daily so the latest ones are always up-to-date.

# Hugo
These dockerfiles are for [Hugo Static Site Generator](https://gohugo.io). I use them for building my website with gitlab-runners.
The images include git so that you can use git-info in your hugo builds. I also included npm and yarn to be able to fetch assets from the node repository and include them in my build.

A simple and easy example for a working .gitlab-ci.yml would be:
```yaml
image: felixzett/hugo:latest

variables:
  GIT_SUBMODULE_STRATEGY: recursive

build:
  script:
  - hugo
```

## Hugo ![Docker Pulls](https://img.shields.io/docker/pulls/felixzett/hugo)
`docker pull felixzett/hugo`

Hugo standard version including git, npm and yarn

## Hugo Extended ![Docker Pulls](https://img.shields.io/docker/pulls/felixzett/hugo-extended)
`docker pull felixzett/hugo-extended`

Hugo extended version including git, npm and yarn
