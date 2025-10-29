# Be sure to restart your server when you modify this file.

# Configure parameters to be filtered from the log file.
Rails.application.config.filter_parameters += [
  :password,
  :password_confirmation
]
