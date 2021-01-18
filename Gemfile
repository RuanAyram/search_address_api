# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.1'

gem 'bootsnap', '>= 1.4.2', require: false
gem 'devise'
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 4.1'
gem 'rails', '~> 6.0.3', '>= 6.0.3.2'
gem 'rest-client'
gem 'simple_token_authentication', '~> 1.0'
# Use Rack CORS for handling Cross-Origin Resource Sharing (CORS), making cross-origin AJAX possible
gem 'rack-cors'
# Rack middleware for blocking & throttling
gem 'rack-attack'

group :development, :test do
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  # Default testing framework
  gem 'rspec-rails', '~> 3.8'
  # Setting up Ruby objects as test data
  gem 'factory_bot_rails'
  # Simple one-liner tests
  gem 'shoulda-matchers', '~> 3.1'
end

group :development do
  gem 'listen', '~> 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  # Ruby static code analyzer and formatter
  gem 'rubocop', require: false
end

gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
