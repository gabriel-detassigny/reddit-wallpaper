require 'redd'
require 'open-uri'
require './configuration.rb'

class Downloader

  def initialize
    @config = Configuration.instance.reddit
    _connect
  end

  def get_top_link
    links = @client.get_hot(@config['subreddit'], limit: 5)
    links.each do |link|
      if link.url.length > 0
        extension = File.extname link.url
        if %w(.gif .jpeg .jpg .png).include? extension
          path = "#{Dir.pwd}/wallpaper#{extension}"
          _download_image link.url, path
          return path
        end
      end
    end
    return nil
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
