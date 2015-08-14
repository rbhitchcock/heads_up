module HeadsUp
  class Configuration
    attr_accessor :app_root, :messages_directory

    def initialize
      @app_root = '.'
      @messages_directory = app_root.join("tmp").to_s
    end

    def app_root
      Pathname.new(@app_root.to_s)
    end
  end
end
