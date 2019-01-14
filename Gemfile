source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.0'
gem 'rake'

group :development, :test do
  gem 'sqlite3'
  gem 'rspec-rails'
end

group :development do
  # Use Capistrano for deployment
  gem 'capistrano'
  gem 'capistrano-bundler'
  gem 'capistrano-rails'
  gem 'better_errors'
  gem 'binding_of_caller'
end

#postgresql for db
gem 'pg'
#gem 'mysql2', '~> 0.3.18'
#gem 'mysql2'
 
group :production do
  gem 'rails_12factor'

  # Use unicorn as the app server
  gem 'unicorn'

  # newrelic for monitoring
  gem 'newrelic_rpm'
end

# preprocessors
gem 'sass-rails', '~> 4.0.0'
gem 'compass-rails'
gem 'coffee-rails', '~> 4.0.0'
gem 'uglifier', '>= 1.3.0'

# bootstrap
gem 'bootstrap-sass'

# Use jquery as the JavaScript library
gem 'jquery-rails'
gem 'jquery-ui-rails', '~> 4.2.0'

#TODO: remove foundation
gem 'zurb-foundation'
gem 'i18n'

# Add awesome nested set
gem 'awesome_nested_set', '~> 3.0.0.rc.3'
# pagination
gem 'kaminari'
# active record version control
#gem 'vestal_versions', :git => 'git://github.com/laserlemon/vestal_versions'

# processing meta data for orgs and accounts
gem 'pivot_table'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.2'

# for aws bucket usage
gem 'uber-s3'

# instructure canvas api
gem 'canvas-api', '~> 0.7'

gem 'nokogiri'

# background gem for long runnning tasks
gem 'que'

#gem for creating zip files
gem 'rubyzip'

# Use ActiveModel has_secure_password
gem 'bcrypt-ruby', '~> 3.0.0'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

# PDF Generation
gem 'wicked_pdf'  
#gem 'wkhtmltopdf-binary' 
