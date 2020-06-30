require 'pry'

class Genre
  @@all = []

  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def songs
    Song.all.select do |element|
      element.genre == self
    end
  end

  def artists
    songs.map do |element|
      element.artist
    end
  end
  def self.all
    @@all
  end

end