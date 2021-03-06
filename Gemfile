# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.1'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 6.0.3', '>= 6.0.3.4'
# Use sqlite3 as the database for Active Record
gem 'sqlite3', '~> 1.4'
# Use Puma as the app server
gem 'puma', '~> 4.1'
# Use SCSS for stylesheets
gem 'sass-rails', '>= 6'
# Transpile app-like JavaScript. Read more: https://github.com/rails/webpacker
gem 'webpacker', '~> 4.0'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.7'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use Active Model has_secure_password
# gem 'bcrypt', '~> 3.1.7'
gem 'simple_form'
# Use Active Storage variant
# gem Easy upload management for ActiveRecord
gem 'kt-paperclip', '~> 6.4', '>= 6.4.1'
# gem 'image_processing', '~> 1.2'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.2', require: false

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'rspec-rails', '~> 5.0.0', '>= 5.0.0'
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'listen', '~> 3.2'
  gem 'rubocop', '= 1.5.2', require: false
  gem 'rubocop-packaging', '~> 0.5.1'
  gem 'rubocop-performance', '~> 1.9', '>= 1.9.2'
  gem 'rubocop-rails', '~> 2.9', '>= 2.9.1', require: false
  gem 'rubocop-rspec', '~> 2.3', '>= 2.3.0', require: false
  gem 'web-console', '>= 3.3.0'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  # Use Pry as your rails console
  gem 'pry-rails', '~> 0.3.4'
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '>= 2.15'
  # Faker, a port of Data::Faker from Perl, is used to easily generate fake data
  gem 'faker', '~> 2.18', '>= 2.18.0'
  # factory_bot_rails provides integration between factory_bot and rails
  gem 'factory_bot_rails', '~> 6.2', '>= 6.2.0'
  # Extracting `assigns` and `assert_template` from ActionDispatch
  gem 'rails-controller-testing', '~> 1.0', '>= 1.0.5'
  # Making tests easy on the fingers and eyes
  gem 'shoulda', '~> 4.0', '>= 4.0.0'
  # Making callback tests easy on the fingers and eyes
  gem 'shoulda-callback-matchers', '~> 1.1', '>= 1.1.4'
  # Automatic merging of coverage across test suites
  gem 'selenium-webdriver'
  gem 'simplecov', '~> 0.21', '>= 0.21.2', require: false

  # Easy installation and use of web drivers to run system tests with browsers
  gem 'webdrivers'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
