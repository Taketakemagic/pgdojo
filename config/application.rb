require_relative "boot"

require "rails/all"

Bundler.require(*Rails.groups)
Dotenv::Railtie.load if Rails.env.production?

module Pgdojo
  class Application < Rails::Application
    
    config.load_defaults 8.0
    Rails.application.config.assets.precompile += %w( application.sass )
    
    config.autoload_lib(ignore: %w[assets tasks])

   
  end
end
