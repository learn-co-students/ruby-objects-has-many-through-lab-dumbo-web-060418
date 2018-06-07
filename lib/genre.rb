class Genre

  @@all = []
  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def artists
    songs.map { |song| song.artist }
  end

  def new_song(name, artist)
    Song.new(name, artist, self)
  end

  def songs
    Song.all.select { |song| song.genre == self }
  end

end
