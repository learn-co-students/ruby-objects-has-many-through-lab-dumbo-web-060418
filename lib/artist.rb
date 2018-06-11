class Artist

    @@all = []

    def self.all
      @@all
    end

    attr_reader :name

    def initialize(name)
       @name = name
       @@all << self
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
      songs.collect do |song|
        song.genre
      end
    end

end
