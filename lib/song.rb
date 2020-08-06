require 'pry'

class Song
    attr_accessor :name, :artist, :genre
    @@genres = []
    @@count = 0
    @@artists = []
    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@genres << genre
        @@count += 1
        @@artists << artist
    end

    def self.genres
        @@genres = @@genres.uniq
        # binding.pry
    end

    def self.count
        @@count
    end

    def self.artists
        @@artists.uniq
    end

    def self.genre_count
        hash_of_genres = {}
        # counter = 0
        @@genres.each do |genre|
            if hash_of_genres[genre]
                hash_of_genres[genre] += 1
            else
                hash_of_genres[genre] = 1
            # binding.pry
            end
        end
        hash_of_genres
    end

    def self.artist_count
        hash_of_artists = {}
        @@artists.each do |artist|
            if hash_of_artists[artist]
                hash_of_artists[artist] += 1
            else
                hash_of_artists[artist] = 1
            # binding.pry
            end
        end
        hash_of_artists
    end
end


