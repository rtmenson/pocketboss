require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Pocketboss
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # config.autoload_paths += %W(#{config.root}/lib)
    # config.autoload_paths += Dir["#{config.root}/lib/**/"]
    # config.eager_load_paths << Rails.root.join('lib')
    # config.eager_load_paths << Rails.root.join('lib/lyft')
    # config.eager_load_paths << Rails.root.join('lib/lyft/client')
    # config.eager_load_paths << Rails.root.join('lib/lyft/ride')
    # config.eager_load_paths << Rails.root.join('lib/lyft/client/api')
  end
end
