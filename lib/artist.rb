require 'pry'

class Artist

	@@all = []

	attr_accessor :name, :songs


	def initialize(name)
		@name = name
		@songs = []
		@@all << self
	end

	def self.all
		@@all
	end

	def new_song(name, genre)
		new_song = Song.new(name, self, genre)
		self.songs << new_song
		new_song
	end

	def genres
		self.songs.collect  do |song|
			song.genre
		end
	end
end
