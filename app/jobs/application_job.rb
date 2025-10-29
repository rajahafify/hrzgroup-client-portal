class ApplicationJob < ActiveJob::Base
  retry_on StandardError, wait: 3.seconds, attempts: 5
end
