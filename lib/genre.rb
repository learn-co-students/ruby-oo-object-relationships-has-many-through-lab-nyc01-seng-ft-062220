class Genre
    attr_accessor :name
    @@all = []
    
    def initialize(name)
        @name = name
        Genre.all << self
    end

    def self.all
        @@all
    end

    def songs
        Song.all.select {|ele| ele.genre == self}
    end
    def artists
        songs.map {|ele| ele.artist}
    end
end

