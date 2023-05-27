ARG RUVY_VERSION=3.2.2

# https://hub.docker.com/_/ruby/
FROM ruby:${RUVY_VERSION}-bullseye

ENV TZ Asia/Tokyo

ARG APP_DIRECTORY=/usr/src/app
RUN mkdir -p $APP_DIRECTORY
WORKDIR $APP_DIRECTORY
COPY . $APP_DIRECTORY

RUN bundle config --global frozen 1 \
    && bundle config set --global with production \
    && bundle config set --global without development test \
    && bundle install

CMD ["bundle", "exec", "ruby", "main.rb"]
