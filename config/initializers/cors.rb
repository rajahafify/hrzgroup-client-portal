# Allow cross-origin requests in development if rack-cors is available.
if defined?(Rack::Cors)
  Rails.application.config.middleware.insert_before 0, Rack::Cors do
    allow do
      origins ENV.fetch("CORS_ORIGINS", "*")
      resource "*", headers: :any, methods: %i[get post put patch delete options head]
    end
  end
end
