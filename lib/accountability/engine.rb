module Accountability
  class Engine < ::Rails::Engine
    isolate_namespace Accountability

    config.generators do |g|
      g.test_framework :rspec
      g.assets false
      g.helper false
    end
  end
end
