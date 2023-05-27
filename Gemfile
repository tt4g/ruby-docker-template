# frozen_string_literal: true

source "https://rubygems.org"

git_source(:github) {|repo_name| "https://github.com/#{repo_name}" }

group :production do
    # Write gems for using production.
end

group :development do
    gem "rubocop", "~> 1.51", :require => false
    gem "rubocop-rspec", "~> 2.22", :require => false
    gem "rubocop-performance", "~> 1.18", :require => false

    gem "debug", "~> 1.8"
end

group :test do
    gem "rspec", "~> 3.12", :require => false
end
