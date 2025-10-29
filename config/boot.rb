ENV["BUNDLE_GEMFILE"] ||= File.expand_path("../Gemfile", __dir__)

require "bundler/setup" # Set up gems listed in the Gemfile.

begin
  require "bootsnap/setup"
rescue LoadError
  warn "Bootsnap is not installed; skipping bootsnap/setup." if ENV["DEBUG_BOOT"]
end
