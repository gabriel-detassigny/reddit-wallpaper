#!/usr/bin/env ruby

require './downloader.rb'

dl = Downloader.new
filename = dl.get_top_link

if filename.nil?
  puts "Error : could not download any wallpaper!"
else
  `osascript set_wallpaper.scpt #{filename}`
end
