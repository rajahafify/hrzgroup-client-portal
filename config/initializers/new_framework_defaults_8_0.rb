# Settings introduced in Rails 8 defaults are applied here to ease upgrades.
if Rails.application.config.respond_to?(:action_view)
  Rails.application.config.action_view.form_with_generates_ids = true
end
