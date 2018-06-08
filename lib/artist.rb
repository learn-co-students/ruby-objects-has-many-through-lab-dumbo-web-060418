require_relative './song.rb'
require_relative './genre.rb'
require 'pry'

class Artist


	attr_accessor :name, :songs

	@@all = []


	def initialize(name)
		@name = name
		# @songs = []
		@@all << self
	end

	def new_song(name, genre)
		new_song = Song.new(name, self, genre)
		new_song
	end

	def self.all
		@@all
	end

	def songs
		all_songs = Song.all
		all_songs.select {|song| song.artist == self}
	end

	def genres
		songs = self.songs
		songs.map {|song| song.genre}
	end



end
