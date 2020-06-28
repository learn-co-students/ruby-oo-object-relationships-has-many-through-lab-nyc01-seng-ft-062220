class Artist
    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def new_song(name, genre)
        Song.new(name, self, genre)
    end

    def songs
        Song.all.select {|song_object| song_object.artist == self}
    end

    def genres
       #?songs.map{&:genre}
       songs.collect {|song_object| song_object.genre}

    end

end
