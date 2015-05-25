require './src/configuration.rb'

class Wallpaper
  def initialize filename
    @filename = filename
    @config = Configuration.instance.system
  end

  # Check Graphical interface from config file and set desktop image
  def set_desktop
    case @config['gui']
    # Mac OS X Graphical interface
    when 'macosx'
      `osascript src/system/macosx.scpt #{@filename}`
    # XFCE
    when 'xfce'
      `./src/system/xfce.sh #{@filename}`
    else
      puts 'Error : Unknown Graphical interface!'
    end
  end
end
