FROM ruby:3.0.1-buster

RUN apt-get update && apt-get install -y \
    # Git for using development.
    git \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

CMD ["bundle", "exec", "ruby", "main.rb"]
