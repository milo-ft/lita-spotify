require 'meta-spotify'

module Lita
  module Handlers
    class Spotify < Handler

      def self.default_config(config)
        config.username = nil
        config.password = nil
        config.key = nil
        config.redis = nil
      end

      route %r{play\s+(.+)}i,           :play, help: { "play <SEARCH>" => "Plays a song found for <SEARCH>" }

      def play(response)
        query = response.matches[0][0]
        artists = query_artists(query)
        artist = artists.sample
        artist_names = artists.map { |a| a.name }
        puts artist_names.inspect
        response.reply artist.name
      end

      private

      def query_artists(query)
        api_request = ::MetaSpotify::Artist.search query
        api_request[:artists]
      end

    end

    Lita.register_handler(Spotify)
  end
end
