require_relative "boot"
require "rails/all"

Bundler.require(*Rails.groups)

module HrzgroupClientPortal
  class Application < Rails::Application
    config.load_defaults 8.0

    config.generators.system_tests = nil
  end
end
