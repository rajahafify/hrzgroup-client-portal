Rails.application.config.hosts += [
  "localhost",
  "127.0.0.1",
  ENV.fetch("APP_HOST", nil)
].compact
