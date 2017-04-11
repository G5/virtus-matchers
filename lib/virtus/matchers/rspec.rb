require "virtus/matchers"

RSpec.configure do |config|
  config.include Virtus::Matchers, type: :virtus
end
