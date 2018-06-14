require 'pry'
class Genre

	@@all = [];

	attr_accessor :name

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
			song.genre
		end
	end

	def artists
		Song.all.collect do |genre|
			genre.artist
		end
	end
end




#
