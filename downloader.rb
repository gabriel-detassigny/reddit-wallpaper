require 'redd'
require 'open-uri'
require './configuration.rb'

class Downloader

  def initialize
    @config = Configuration.instance.reddit
    _connect
  end

  def get_top_link
    filename = nil
    link = @client.get_hot('wallpaper', limit: 1).first
    if link.url.length > 0
      filename = "/tmp/wallpaper.jpg"
      _download_image link.url, filename
    end
    return filename
  end

  private
  def _connect
    user_agent = 'Wallpaper Mac v0.1'
    @client = Redd.it(:script, @config['client_id'], @config['secret'], @config['username'], @config['password'], user_agent: user_agent)
    @client.authorize!
  end

  def _download_image url, filename
    File.open(filename, "wb") do |saved_file|
      open(url, "rb") do |read_file|
        saved_file.write(read_file.read)
      end
    end
  end
end
