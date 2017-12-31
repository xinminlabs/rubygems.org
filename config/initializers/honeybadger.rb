# frozen_string_literal: true

# return true to ignore or false to send
Honeybadger.exception_filter do |notice|
  ActionDispatch::ExceptionWrapper.rescue_responses.keys.include? notice[:error_class]
end

Honeybadger.configure do |config|
  config.disabled = true if Rails.env.development?
end
