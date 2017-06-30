require 'pry'

class Artist 

	attr_accessor :name 
	@@all = []

	def initialize(name)
		@name = name
		@songs = []
	end 

	def save
		@@all << self 
	end 

	def songs
		@songs
	end 

	def add_song(song)
		@songs << song 
	end

	def self.find_or_create_by_name(name)
		@@all.each  do |artist|
			if artist.name == name 
				return artist 
			end 
		end 
		new_artist = self.new(name)
		new_artist.save 
		new_artist 
	end 

	def self.all 
		@@all 
	end 

	def print_songs 
		@songs.each do |song|
			puts song.name
		end 
	end


end 