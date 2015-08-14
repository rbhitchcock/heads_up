require 'heads_up'
require 'rack/heads_up'
require 'rails'

if defined? Rails::Engine
  module HeadsUp
    class Engine <  Rails::Engine
      initializer 'headsup.add_to_middleware_stack' do |app|
        app.config.middleware.use Rack::HeadsUp
      end
    end
  end
end
