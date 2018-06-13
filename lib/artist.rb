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
    #goes thru all the songs and
    #finds the one that belongs to an instance of an artist
    Song.all.select do |song|
      song.artist == self
    end
  end

  def genres
    #iterates over artist's songs
    #gets genre of each song
    self.songs.map do |song|
      song.genre
      # binding.pry
    end
  end

end
