#Song is the bridge connector for both artist and genre 
class Song 
    attr_reader :genre, :artist
    @@all = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        Song.all << self
    end

    def self.all
        @@all
    end

end