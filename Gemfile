source 'https://rubygems.org'

# auto-included by rails new
gem 'rails', '4.2.1'
gem 'pg'
gem 'uglifier', '>= 1.3.0'
gem 'jquery-rails'
gem 'turbolinks', '~> 5.0.0.beta'
gem 'jbuilder', '~> 2.0'
gem 'sdoc', '~> 0.4.0', group: :doc

# my gems
gem 'puma'
gem 'haml'
gem 'coffee-rails'
gem 'devise' # authentication
gem 'omniauth-twitter'
gem 'omniauth-facebook'
gem 'omniauth-instagram'
gem "omniauth-google-oauth2"
gem 'figaro' # ENV variable config
gem 'cancancan', '~> 1.10' # authorization
gem 'high_voltage'
gem 'simple_form'
gem 'country_select'
gem 'therubyracer'
gem "paperclip", "~> 4.3"

# UI
gem 'bootstrap-sass', '~> 3.3.5'
gem 'sassc-rails', '>=1.2.0' # faster SASS compilation
gem 'twitter-bootstrap-rails', '>=3.2'
gem 'font-awesome-rails'
gem 'devise-bootstrap-views'
gem 'toastr-rails'

# mock up
gem 'ffaker', '>=2.2.0'

group :development, :test do
  gem 'byebug'
  gem 'web-console', '~> 2.0'
  gem 'spring' # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring

  gem 'better_errors'
  gem 'seed_dump'
  gem 'guard-livereload', require: false
  gem 'rack-livereload'
  gem 'rspec-rails', '~> 3.0'
  gem 'pry'
  gem 'pry-stack_explorer'
  gem 'pry-byebug'

  # The following gems are for debugging support
  # gem 'ruby-debug-ide'
  # gem 'debase'
end

group :production do
  gem 'rails_12factor'
end

ruby "2.2.1"
