class Artist

  attr_accessor :name

  @@all = []
  # @@songs = []


  def initialize(name)
    @name = name

    @@all << self
  end

  def new_song(name, genre)
    new_music = Song.new(name, self, genre)
    # @@songs << new_music
    new_music   #DON'T NEED TO SHOVEL TO @@songs BECAUSE
                #of SINGLE SOURCE OF TRUTH...the SONGS class
                #KEEEPS TRACK OF ALL THE SONGS 
  end

  def self.all
    @@all
  end

  def songs ##why no self.songs ?? How is this called...
    Song.all.select do |song|
      song.artist == self
    end

  end

  def genres      #this HAS to be .MAP since .SONGS (e.g., def songs) is
                  #an array. So it cannot select, but must map
    self.songs.map do |song|
      song.genre
    end
  end

end
