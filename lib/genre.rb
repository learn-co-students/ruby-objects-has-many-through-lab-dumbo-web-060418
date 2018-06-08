require_relative './song.rb'
require_relative './artist.rb'

class Genre

	attr_accessor :name

	@@all = []

	def initialize(name)
		@name = name
	end

	def self.all
		@@all
	end

	def new_song(name, artist)
		song = Song.new
		song.name = name
		song.artist = artist
		song.genre = self
	end

	def songs
		songs = Song.all
		songs.select {|song| song.genre == self }
	end

	def artists
		songs = self.songs
		songs.map {|song| song.artist }
	end



end