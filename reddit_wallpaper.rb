#!/usr/bin/env ruby

require './src/downloader.rb'
require './src/wallpaper.rb'

dl = Downloader.new
filename = dl.get_top_link

if filename.nil?
  puts "Error : could not download any wallpaper!"
else
  w = Wallpaper.new filename
  w.set_desktop
end
