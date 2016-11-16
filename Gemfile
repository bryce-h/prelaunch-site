source 'https://rubygems.org'

ruby '2.3.0'

gem 'activeadmin', '~> 1.0.0.pre4'
gem 'delayed_job_active_record', '~> 4.0.3'
gem 'devise'
gem 'pg'
gem 'rails', '4.2.5.2'
gem 'unicorn'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
    gem 'coffee-rails'
    gem 'sass-rails'
    gem 'uglifier'
end

group :development, :test do
    gem 'pry'
    gem 'rspec-rails'
    gem 'rspec-mocks'
    gem 'test-unit', '~> 3.0'
    gem 'dotenv-rails'
    gem 'awesome_print'
    gem 'interactive_editor'
    gem 'hirb'
end

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Deploy with Capistrano
# gem 'capistrano'

# For getting the app to precompile
gem 'therubyracer'

# For pushing app to heroku
gem 'rails_12factor'

group :production do
    gem 'rails_serve_static_assets'
end
