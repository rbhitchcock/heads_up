require 'rack'
require 'heads_up'

class Rack::HeadsUp
  def initialize(app, config={})
    @app = app
  end

  def call(env)
    puts "LOOK AT ME!"
    @app.call env
  end
end
