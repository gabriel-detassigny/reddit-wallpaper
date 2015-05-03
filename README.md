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
cp config.yml.example config.yml
```

and set your credentials in *config.yml*.

To start **Reddit Wallpaper**, simple type :
```
./main.rb
```

### Contributions

You're more than welcome to contribute or suggest a new feature!
To do so, simple create a pull request, or an issue.
