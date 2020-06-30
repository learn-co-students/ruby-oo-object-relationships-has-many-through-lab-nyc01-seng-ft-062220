require 'pry'

class Song

  attr_accessor :artist, :genre
  attr_reader :name

  @@all = []

  def initialize(title, artist, genre)
    @title = title
    @artist = artist
    @genre = genre
    @@all << self

  end

  def self.all
    @@all
  end

end