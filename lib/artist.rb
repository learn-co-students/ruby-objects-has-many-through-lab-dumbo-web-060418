require 'pry'

class Artist

  attr_accessor :name, :genres, :songs

  @@all = []

  def initialize(name)
    @name = name
    @genres = []
    @songs =[]
    @@all << self
  end

  def self.all
    @@all
  end

  def new_song(name, genre)
    Song.new(name, self, genre)
  end

  def songs
    Song.all.select do |song|
      song.artist == self
    end
  end

  def genres
    songs.map do |song|
      # binding.pry

      song.genre
    end
  end

end
