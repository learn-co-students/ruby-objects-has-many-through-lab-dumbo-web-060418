class Genre

  attr_accessor :name, :songs, :artists

  def initialize(name)
    @name = name
    @songs = []
    @artists = []
  end

  def songs
    Song.all.select do |song|
      song.genre == self
    end

  end

  def artists
    self.songs.map do |song|
      song.artist
    end
  end
end
