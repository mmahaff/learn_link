require_relative 'boot'

require 'rails/all'

Bundler.require(*Rails.groups)

module LearnLink
  class Application < Rails::Application
  end
end
