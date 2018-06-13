require 'pry'
class Genre

  attr_accessor :name

  @@all  = []

  def initialize(name)
    @name = name

    @@all << self
  end

  def self.all
    @@all
  end

  def new_song(name, artist)
    Song.new(name, artist, self)
  end

  def songs
    Song.all.select do |song|
      song.genre == self
    end
  end

  def artists
    #goes through genre's songs
    #gets the artist for each song
    self.songs.map do |song|
      song.artist
      # binding.pry
    end
  end
end
