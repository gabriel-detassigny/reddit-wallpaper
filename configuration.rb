require 'yaml'
require 'singleton'

class Configuration
  include Singleton

  def initialize
    @yaml = begin
      YAML.load(File.open "./config.yml")
    rescue ArgumentError => e
      puts "Could not parse YAML: #{e.message}"
    end
  end

  def reddit
    @yaml['reddit']
  end

end
