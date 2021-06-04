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

## Setup for development

Install Gem.

```bash
$ bundle config set --local path "vendor/bundle"
$ bundle install
$ bundle binstubs rspec-core
```

**NOTE:** Running the `bundle config set --local path "vendor/bundle"` command
will install Gem on the host volume, so that Gem does not need to be reinstalled
when Docker container is rebuilt.
However, Visual Studio Code may not be able to find the Gem installed in
`vendor/bundle` with this configuration. In such a case, run
`bundle config unset --local path` command to remove the configuration and
install Gem globally. Instead, globally installed Gems in Docker containers will
have to be installed every time the container is rebuilt.

**NOTE:** Run `bundle binstubs rspec-core` for the purpose of creating
`bin/rspec` for debugging `rspec` in Visual Studio Code.
You don't need to run it if you are not debugging using
[.vscode/launch.json](.vscode/launch.json).

## Build release Docker image

```bash
$ docker image build -f docker/release/Dockerfile \
  --build-arg RUBY_VERSION=3.0.1 \
  -t ruby_project:0.1.0 \
  .
```
