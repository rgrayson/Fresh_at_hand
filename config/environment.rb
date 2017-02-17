# Load the Rails application.
require File.expand_path('../application', __FILE__)


#Load env_settings (ENV) variables....
#env_settings is part of .gitignore
file1 = File.join(Rails.root, 'config', 'env_settings.rb')
load(file1) if File.exists?(file1)

#ENV['DB_USERNAME']='aviuser'
#ENV['DB_PASSWORD']='avitest'

# Initialize the Rails application.
Rails.application.initialize!
