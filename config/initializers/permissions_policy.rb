# Define an application-wide permissions policy
if Rails.application.config.respond_to?(:permissions_policy)
  Rails.application.config.permissions_policy do |policy|
    policy.camera      :none
    policy.microphone  :none
    policy.geolocation :none
  end
end
