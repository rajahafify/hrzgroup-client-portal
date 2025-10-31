require "active_support/core_ext/integer/time"

Rails.application.configure do
  config.cache_classes = true
  config.eager_load = true
  config.consider_all_requests_local = false
  config.require_master_key = false

  config.public_file_server.enabled = ENV["RAILS_SERVE_STATIC_FILES"].present?
  config.assets.compile = false

  config.log_level = :info
  config.log_tags = [:request_id]

  config.active_storage.service = :local
  config.active_record.dump_schema_after_migration = false
end
