# frozen_string_literal: true

source "https://rubygems.org"

git_source(:github) {|repo_name| "https://github.com/#{repo_name}" }

group :production do
    # Write gems for using production.
end

group :development do
    gem "solargraph", "~> 0.40.4", :require => false

    gem "rubocop", "~> 1.15", :require => false
    gem "rubocop-rspec", "~> 2.3", :require => false
    gem "rubocop-performance", "~> 1.11", :require => false

    gem "ruby-debug-ide", "~> 0.7.2"
    gem "debase", "~> 0.2.4"
    gem "byebug", "~> 11.1"
end

group :test do
    gem "rspec", "~> 3.10", :require => false
end
