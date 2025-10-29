if Rails.application.config.respond_to?(:filter_parameters)
  Rails.application.config.filter_parameters += %i[password password_confirmation]
end
