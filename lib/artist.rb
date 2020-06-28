class Artist
    attr_accessor :name
    @@all = []

    def initialize (name)
        @name = name
        @@all << self
    end





    def self.all
        @@all
    end

    def new_song(name_string,genre_string)
        Song.new(name_string,self,genre_string)
    end

    def songs
        Song.all.select{|i| i.artist == self}
    end

    def genres
        self.songs.map {|i| i.genre}
    end
    


end
