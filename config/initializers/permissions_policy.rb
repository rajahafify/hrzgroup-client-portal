# Define an application-wide HTTP permissions policy. For further
# information see https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Permissions-Policy
Rails.application.config.permissions_policy do |policy|
  policy.geolocation :none
  policy.microphone :none
  policy.camera :none
end
