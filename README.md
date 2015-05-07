# Reddit Wallpaper

Automatically set a wallpaper from reddit on your mac.

## Installation

### Ruby version

This was tested using ruby 2.1.3p242

### Dependencies

You need to install [redd](https://github.com/avidw/redd), a reddit API wrapper gem.

You can install it using Bundler, by typing the following command :

```
bundle install
```

### Connect to Reddit API

Follow [these instructions](https://github.com/reddit/reddit/wiki/OAuth2-Quick-Start-Example) to get a client ID and a secret to connect to reddit's API.

Then, in the project directory, copy/paste this

```
cp config/reddit.yml.example config/reddit.yml
```

and set your credentials in *config/reddit.yml*.

## Configuration

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
