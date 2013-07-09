source 'https://rubygems.org'

gem 'rails', '3.2.13'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

gem 'sqlite3'


# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'compass-rails'
  gem 'uglifier', '>= 1.0.3'
end

group :development, :test do
  gem 'rspec-rails'                 # for tests
  gem 'guard-rspec'                 # watch app files
  gem 'guard-zeus'                  # spork integration
  gem 'database_cleaner'            # cleanup database in tests
  gem 'factory_girl_rails'          # model stubber
  gem 'shoulda'                     # model spec tester
  gem 'rb-fsevent', require: false  # OSX file notification
  gem 'growl'
end
gem 'debugger'
gem 'ember-rails'
gem "therubyracer"
gem "less-rails" #Sprockets (what Rails 3.1 uses for its asset pipeline) supports LESS
gem "twitter-bootstrap-rails"
gem 'jquery-rails'
gem 'paperclip'

gem 'devise'                   # server-side authentication
gem 'bcrypt-ruby'              # password encryption
gem 'inherited_resources'      # for easy RESTful API controller scaffolding
gem 'active_model_serializers' # works out of the box with ember-data
gem 'ember-auth-rails'         # client-side authentication
gem 'emblem-rails'             # easier to write templates
gem 'gravtastic'