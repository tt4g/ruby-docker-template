# Overview

Ruby project template.

## How to use

Rename `ruby_project` to project name.

The project name `ruby_project` appears in the following.

1. directory name `lib/ruby_project`
2. Docker image name `docker/*/Dockerfile`
3. Docker container name `ruby_project_development` in `docker-compose.yml`
4. `.rb` sample files.
5. Visual Studio Code Remote Container settings in `.devcontainer` (https://code.visualstudio.com/docs/remote/containers)

Change Ruby version `.ruby-version` and `docker/ruby_project/Docker`.

## Development

## Docker

The development environment is defined in `docker-compose.yml`.
It is developed using the Remote container feature of Visual Studio Code.

Another way (Do not use Visual Studio Code), Run the following command.

```bash
$ docker-compose.exe run ruby_project_development /bin/bash -l
```

## Setup

Install Gem.

```bash
$ bundle install
$ bundle binstubs rspec-core
```

**NOTE:** If set the bundle installation path to local with
`bundle config set --local path "vendor/bundle"`, some extensions of 
Visual Studio Code will not work.

## Build release Docker image

```bash
$ docker image build -f docker/release/Dockerfile .
```
