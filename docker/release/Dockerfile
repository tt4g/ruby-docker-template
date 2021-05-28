FROM ruby:3.0.1-buster

ARG APP_DIRECTORY=/usr/src/app
RUN mkdir -p $APP_DIRECTORY
WORKDIR $APP_DIRECTORY
COPY . $APP_DIRECTORY

RUN bundle config set --local path "vendor/bundle" \
    && bundle config --local frozen 1 \
    && bundle install --with production

CMD ["bundle", "exec", "ruby", "main.rb"]
