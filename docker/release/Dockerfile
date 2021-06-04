ARG RUVY_VERSION=3.0.1

FROM ruby:${RUVY_VERSION}-buster

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
