require_relative "boot"
require "rails/all"

Bundler.require(*Rails.groups) if defined?(Bundler)

module HrzgroupClientPortal
  class Application < Rails::Application
    config.load_defaults 8.0 if config.respond_to?(:load_defaults)

    config.generators do |g|
      g.assets false
      g.helper false
      g.test_framework nil
    end

    config.time_zone = "UTC"
    config.active_record.default_timezone = :utc
  end
end
