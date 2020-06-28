class Artist
    attr_accessor :name, :genre

    @@all = []

    def initialize(name)
        @name = name
        Artist.all << self
    end

    def self.all
        @@all
    end

    def new_song(name, genre) #relationship builder to song  
        Song.new(name, self, genre)
    end

    def songs
        Song.all.select {|song| song.artist == self } #assuming name of song
    end

    def genres
        songs.map {|song| song.genre} 
    end

end