# Load the Rails application.
require File.expand_path('../application', __FILE__)


#Load env_settings (ENV) variables....
#env_settings.rb file is part of .gitignore for security
file1 = File.join(Rails.root, 'config', 'env_settings.rb')
load(file1) if File.exists?(file1)


# Initialize the Rails application.
Rails.application.initialize!
