# Namespace for the gem
module HeadsUp
  require 'heads_up/version'
  require 'heads_up/configuration'

  class << self
    def method_missing(meth, *args, &block)
      files = Dir.glob("#{config.messages_directory}/heads_up_bulletin_template_*")
      match = files.detect { |f| f =~ /heads_up_bulletin_template_#{meth.to_s}\z/ }
      puts match if match
    end

    def config
      @config ||= Configuration.new
    end
  end
end
