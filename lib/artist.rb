class Artist

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        Artist.all << self
    end

    def self.all
        @@all
    end

    def songs
        Song.all.select do |element|
            element.artist == self
        end
    end

    def new_song(name,genre)
        Song.new(name, self, genre)
    end

    def genres
        self.songs.map {|element| element.genre}
    end

end