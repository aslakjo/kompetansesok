# Be sure to restart your server when you modify this file

# Uncomment below to force Rails into production mode when
# you don't control web/app server and can't set it the proper way
# ENV['RAILS_ENV'] ||= 'production'

# Specifies gem version of Rails to use when vendor/rails is not present
RAILS_GEM_VERSION = '2.2.2' unless defined? RAILS_GEM_VERSION

# Bootstrap the Rails environment, frameworks, and default configuration
require File.join(File.dirname(__FILE__), 'boot')

Rails::Initializer.run do |config|
  # Settings in config/environments/* take precedence over those specified here.
  # Application configuration should go into files in config/initializers
  # -- all .rb files in that directory are automatically loaded.
  # See Rails::Configuration for more options.

  # Skip frameworks you're not going to use. To use Rails without a database
  # you must remove the Active Record framework.
  # config.frameworks -= [ :active_record, :active_resource, :action_mailer ]

  # Specify gems that this application depends on. 
  # They can then be installed with "rake gems:install" on new installations.
  # You have to specify the :lib option for libraries, where the Gem name (sqlite3-ruby) differs from the file itself (sqlite3)
  # config.gem "bj"
  # config.gem "hpricot", :version => '0.6', :source => "http://code.whytheluckystiff.net"
  # config.gem "sqlite3-ruby", :lib => "sqlite3"
  # config.gem "aws-s3", :lib => "aws/s3"

  config.gem 'fastercsv',                         :version => '1.4.0'
  config.gem 'progressbar',                       :version => '0.0.3'
  config.gem 'chronic',                           :version => '0.2.3'
  config.gem 'rubyzip',                           :version => '0.9.1',  :lib => 'zip/zipfilesystem'
  config.gem 'rspec',                             :version => '1.1.12', :lib => 'spec'

  if defined?(JRUBY_VERSION)
    config.gem 'activerecord-jdbc-adapter',       :version => '0.9',    :lib => 'jdbc_adapter'
    config.gem 'jdbc-mysql',                      :version => '5.0.4',  :lib => 'jdbc/mysql'
    config.gem 'activerecord-jdbcmysql-adapter',  :version => '0.9',    :lib => 'active_record/connection_adapters/jdbcmysql_adapter'
    config.gem 'atom-tools',                      :version => '2.0.1',  :lib => 'atom/tools'
    config.gem 'rake',                            :version => '0.8.3'
  else
    config.gem 'mysql',                           :version => '2.7' 
    
    # Brukes kun til test
    config.gem 'nokogiri',                        :version => '1.1.0'
    config.gem 'aslakhellesoy-cucumber',          :version => '0.1.99.11', :lib => 'cucumber'
  end
  
  # Only load the plugins named here, in the order given. By default, all plugins 
  # in vendor/plugins are loaded in alphabetical order.
  # :all can be used as a placeholder for all plugins not explicitly named
  # config.plugins = [ :exception_notification, :ssl_requirement, :all ]

  # Add additional load paths for your own custom dirs
  # config.load_paths += %W( #{RAILS_ROOT}/extras )

  # Force all environments to use the same logger level
  # (by default production uses :info, the others :debug)
  # config.log_level = :debug

  # Make Time.zone default to the specified zone, and make Active Record store time values
  # in the database in UTC, and return them converted to the specified local zone.
  # Run "rake -D time" for a list of tasks for finding time zone names. Comment line to use default local time.
  config.time_zone = 'UTC'

  # The internationalization framework can be changed to have another default locale (standard is :en) or more load paths.
  # All files from config/locales/*.rb,yml are added automatically.
  # config.i18n.load_path << Dir[File.join(RAILS_ROOT, 'my', 'locales', '*.{rb,yml}')]
  # config.i18n.default_locale = :de

  # Your secret key for verifying cookie session data integrity.
  # If you change this key, all old sessions will become invalid!
  # Make sure the secret is at least 30 characters and all random, 
  # no regular words or you'll be exposed to dictionary attacks.
  config.action_controller.session = {
    :session_key => '_kompetansesok_session',
    :secret      => 'a1bee82f0eecd6281fb65de25ccb97522e34595e2275ff9c01979afd751a618c45a93c10a83e1a1beabfa96f35aa2d6a111f4145fee75fff33df6a96734ec78d'
  }

  # Use the database for sessions instead of the cookie-based default,
  # which shouldn't be used to store highly confidential information
  # (create the session table with "rake db:sessions:create")
  # config.action_controller.session_store = :active_record_store

  # Use SQL instead of Active Record's schema dumper when creating the test database.
  # This is necessary if your schema can't be completely dumped by the schema dumper,
  # like if you have constraints or database-specific column types
  # config.active_record.schema_format = :sql

  # Activate observers that should always be running
  # Please note that observers generated using script/generate observer need to have an _observer suffix
  # config.active_record.observers = :cacher, :garbage_collector, :forum_observer
end
