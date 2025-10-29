require "active_support/core_ext/integer/time"

Rails.application.configure do
  config.cache_classes = false
  config.eager_load = false
  config.consider_all_requests_local = true
  config.server_timing = true

  config.cache_store = :memory_store
  config.public_file_server.enabled = true
  config.public_file_server.headers = {
    "Cache-Control" => "public, max-age=172800"
  }

  config.active_storage.service = :local
  config.active_record.migration_error = :page_load
  config.active_record.verbose_query_logs = true
  config.active_record.dump_schema_after_migration = false

  config.file_watcher = ActiveSupport::EventedFileUpdateChecker
  config.assets.quiet = true
end
