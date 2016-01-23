# Reddit Wallpaper

Automatically set a wallpaper from reddit on your computer.

This works on both Mac and Linux.

## Installation


### Ruby version

You'll probably need a rather recent version of Ruby.
I tested it with ruby 2.1 and 2.2 and it works fine.

### Dependencies

You need to install [redd](https://github.com/avidw/redd), a reddit API wrapper gem.

You can install it using Bundler, by typing the following command :

```
bundle install
```

or just manually install the gem :

```
gem install redd
```

### Connect to Reddit API

Follow [these instructions](https://github.com/reddit/reddit/wiki/OAuth2-Quick-Start-Example) to get a client ID and a secret to connect to reddit's API. You'll need to have a reddit account as well.

Then, in the project directory, copy/paste this

```
cp config/reddit.yml.example config/reddit.yml
```

and set your credentials in *config/reddit.yml*.

## Configuration

### GUI

You need to set your graphical interface in *reddit.yml*, through the *gui* key.
Here are the supported interfaces:

* *macosx* : Mac OS X graphical interface
* *xfce* : [XFCE](http://www.xfce.org/), a nice lightweight GUI
* *gnome* : [Gnome](https://www.gnome.org/) version 3
* *unity* : [Unity](https://unity.ubuntu.com/), Ubuntu's default GUI

### Subreddits

You can select from which subreddits you want to download wallpapers!
This can be set in *config/reddit.yml*, through the *subreddit* array:
```
subreddit:
  - subreddit1
  - subreddit2
```

Here are some nice subreddits for wallpapers :

- [wallpapers](https://www.reddit.com/r/wallpapers)
- [wallpaper](https://www.reddit.com/r/wallpaper)
- [ImaginaryLandscapes](https://www.reddit.com/r/ImaginaryLandscapes/)
- [ImaginaryTechnology](https://www.reddit.com/r/ImaginaryTechnology/)
- [desktoplego](https://www.reddit.com/r/desktoplego)
- [minimalwallpaper](https://www.reddit.com/r/minimalwallpaper)

### Execution

To start **Reddit Wallpaper**, simple type :
```
./reddit_wallpaper.rb
```

### Contributions

You're more than welcome to contribute or suggest a new feature!
To do so, simple create a pull request, or an issue.
