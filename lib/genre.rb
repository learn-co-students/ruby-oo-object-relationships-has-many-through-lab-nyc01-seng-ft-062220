class Genre
    attr_accessor :name
    
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def songs
        Song.all.select {|song_object| song_object.genre == self}
    end

    def artists
        songs.collect {|song_object| song_object.artist}
    end
end