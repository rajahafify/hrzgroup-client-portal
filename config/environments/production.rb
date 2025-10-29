require "active_support/core_ext/integer/time"

Rails.application.configure do
  config.cache_classes = true
  config.eager_load = true

  config.consider_all_requests_local = false
  config.action_controller.perform_caching = true
  config.cache_store = :memory_store

  config.require_master_key = true

  config.public_file_server.enabled = ENV["RAILS_SERVE_STATIC_FILES"].present?
  config.assets.css_compressor = nil

  config.active_storage.service = :local

  config.force_ssl = ENV["RAILS_FORCE_SSL"].present?

  config.log_level = :info
  config.log_tags = [:request_id]

  config.action_mailer.perform_caching = false

  config.i18n.fallbacks = true

  config.active_support.report_deprecations = false

  config.log_formatter = ::Logger::Formatter.new
  if ENV["RAILS_LOG_TO_STDOUT"].present?
    logger           = ActiveSupport::Logger.new($stdout)
    logger.formatter = config.log_formatter
    config.logger    = ActiveSupport::TaggedLogging.new(logger)
  end

  config.active_record.dump_schema_after_migration = false
end
