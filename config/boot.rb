ENV["BUNDLE_GEMFILE"] ||= File.expand_path("../Gemfile", __dir__)

require "bundler/setup" if File.exist?(ENV["BUNDLE_GEMFILE"])

begin
  require "bootsnap/setup"
rescue LoadError
  # Bootsnap is optional in this environment.
end
