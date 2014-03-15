# lita-spotify

 [![Build Status](https://travis-ci.org/milo-ft/lita-spotify.png)](https://travis-ci.org/milo-ft/lita-spotify)
 [![Code Climate](https://codeclimate.com/github/milo-ft/lita-spotify.png)](https://codeclimate.com/github/milo-ft/lita-spotify)
 [![Coverage Status](https://coveralls.io/repos/milo-ft/lita-spotify/badge.png)](https://coveralls.io/r/milo-ft/lita-spotify)

**lita-spotify** is a [Lita](https://github.com/jimmycuadra/lita) handler for playing music with Spotify.

## Installation

Add lita-spotify to your Lita instance's Gemfile:

``` ruby
gem "lita-spotify"
```

## Configuration

``` ruby
Lita.configure do |config|
  # TODO: Add configuration
  # config.handlers.lita-spotify.token = true
end
```

## Usage

```
You: Lita play <search>
You: Lita play (track|album|artist) <search>
You: Lita queue <search>
You: Lita queue (track|album|artist) <search>
You: Lita show playlist <searc>
You: Lita stop
```

## License

[MIT](http://opensource.org/licenses/MIT)
