ARG RUVY_VERSION=3.2.2

# https://hub.docker.com/_/ruby/
FROM ruby:${RUVY_VERSION}-bullseye

RUN apt-get update && apt-get install -y \
    # Git for using development.
    git \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

CMD ["bundle", "exec", "ruby", "main.rb"]
