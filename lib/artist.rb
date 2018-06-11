require 'pry'
class Artist

  @@all = []

  def self.all
    @@all
  end

  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_song(name, genre)
    # binding.pry
    song1 = Song.new(name, self, genre)

  end

  def songs
    Song.all.select do |song|
      song.artist == self
    end
  end

  def genres
    Song.all.collect do |song|
      song.genre
    end
  end

end
