require 'yaml'
require 'singleton'

class Configuration
  include Singleton

  def initialize
    @yaml = begin
      YAML.load(File.open "config/reddit.yml")
    rescue ArgumentError => e
      puts "Could not parse YAML: #{e.message}"
    end
  end

  def system
    @yaml['system']
  end

  def reddit
    @yaml['reddit']
  end

end
