source 'https://rubygems.org'

gem 'rails', '4.2.4'
gem 'pg'
gem 'flutie'

# Assets
gem 'bourbon'
gem 'jquery-rails'
gem 'sass-rails'
gem 'sprockets-es6'
gem 'uglifier'

group :development do
  gem 'guard-migrate'
  gem 'guard-rspec'
  gem 'spring'
  gem 'spring-commands-rspec'
  gem 'thin'
end

group :test do
  gem 'database_rewinder'
  gem 'fabrication', require: false
  gem 'shoulda-matchers', require: false
  gem 'timecop'
end

group :development, :test do
  gem 'pry-byebug'
  gem 'rspec-rails'
end
