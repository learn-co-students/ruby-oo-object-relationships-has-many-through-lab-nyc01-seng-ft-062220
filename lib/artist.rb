require 'pry'

class Artist

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def songs
    Song.all.select do |element|
      element.artist == self
    end
  end

  def new_song(title, genre)
    Song.new(title, self, genre)
  end

  def genres
    songs.map do |element|
      element.genre
    end
  end


  def self.all
    @@all
  end

end