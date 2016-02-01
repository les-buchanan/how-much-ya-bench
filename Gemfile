source 'https://rubygems.org'

# auto-included by rails new
gem 'rails', '4.2.1'
gem 'pg'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 2.0'
gem 'sdoc', '~> 0.4.0', group: :doc

# my gems
gem 'puma'
gem 'haml'
gem 'bootstrap-sass', '~> 3.3.5'
gem 'twitter-bootstrap-rails', '>=3.2'
gem 'font-awesome-rails'
gem 'simple_form'
gem 'normalize-rails'
gem 'coffee-rails'

gem 'devise' # authentication
gem 'omniauth-twitter'
gem 'omniauth-facebook'
gem "omniauth-google-oauth2"
gem 'figaro' # ENV variable config
gem 'cancancan', '~> 1.10' # authorization
gem 'sassc-rails' # faster SASS compilation


group :development, :test do
  gem 'ffaker'
  gem 'byebug'
  gem 'web-console', '~> 2.0'
  gem 'spring' # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring

  gem 'better_errors'
  gem 'seed_dump'
  gem 'guard-livereload', require: false
  gem 'rack-livereload'
  gem 'rspec-rails', '~> 3.0'
  gem 'pry-rails'
end

group :production do
  gem 'rails_12factor'
end

ruby "2.2.0"