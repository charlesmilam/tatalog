source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.0'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'
# Use hirb to pretty print tables in console
gem "hirb"
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer',  platforms: :ruby
# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# Use for debugging
gem 'byebug'
# Foundation 5 css framework and javascript
gem "foundation-rails"
# Simple Form for form creation
gem "simple_form"
# For file upload, image thumbnail creation
gem "paperclip"
# For use with AWS
gem "aws-sdk-v1"
# User for securely setting envioronment variables
gem "figaro"
# Use ActiveModel has_secure_password
gem 'bcrypt'

# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0',          group: :doc

group :production do
  # Use pg for deployment, required for heroku
  gem "pg"
  # 12factor Needed for heroku deployment
  gem "rails_12factor"
  # Heroku recommended webserver for production
  gem "puma"
end

group :development, :test do
  # Use sqlite3 as the database for Active Record, but only during test and development
  gem 'sqlite3'
  # Use for testing
  gem "rspec-rails"
  # Use to generate fixture data
  gem "factory_girl_rails"
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end

group :test do
  # Use to create names/email for factories
  gem "faker"
  # Use to simulate user interaction with app
  gem "capybara"
  # Launches browser to display what is being rendered on failed tests
  gem "launchy"
  # Runs tests and specs on app changes
  gem "guard-rspec"
end
# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]

