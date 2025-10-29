require "active_support/core_ext/integer/time"

Rails.application.configure do
  config.enable_reloading = true
  config.eager_load = false

  config.consider_all_requests_local = true
  config.server_timing = true

  config.cache_store = :memory_store
  config.active_support.cache_format_version = 7.0
  config.active_support.deprecation = :log
  config.active_support.disallowed_deprecation = :raise
  config.active_support.disallowed_deprecation_warnings = []

  config.action_controller.raise_on_missing_callback_actions = true

  config.active_record.migration_error = :page_load
  config.active_record.verbose_query_logs = true
  config.active_record.automatic_scope_inversing = true

  config.action_controller.perform_caching = false
  config.cache_classes = false

  config.action_mailer.raise_delivery_errors = false
  config.action_mailer.perform_caching = false
  config.active_storage.service = :local

  config.file_watcher = ActiveSupport::EventedFileUpdateChecker
end
