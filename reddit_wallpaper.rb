#!/usr/bin/env ruby

require './src/downloader.rb'

dl = Downloader.new
filename = dl.get_top_link

if filename.nil?
  puts "Error : could not download any wallpaper!"
else
  `osascript src/system/macosx.scpt #{filename}`
end
