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
        Song.all.select do |element|
            element.genre == self
        end
    end

    def artists
        self.songs.map{|element| element.artist}
    end
end