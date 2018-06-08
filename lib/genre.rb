class Genre

  @@all = []

  attr_accessor :name

  def initialize(name)
    @name=name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_song(name, artist)
    Song.new(name, artist, self)
  end

  def songs
    Song.all.select do |x|
    x.genre == self
    end
  end

  def artists
    self.songs.map do |x|
      x.artist
    end.uniq
  end
end
