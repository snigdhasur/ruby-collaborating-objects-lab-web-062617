
class Song

	attr_accessor :name, :artist 

	def initialize(name)
		@name = name
	end 


#'Michael Jackson - Black or White - pop.mp3'
	def self.new_by_filename(file_name)
		name_from_file = file_name.split(" - ")[1]
		artist_from_file = file_name.split(" - ")[0]
		song = Song.new(name_from_file)
		appended_artist = Artist.find_or_create_by_name(artist_from_file)
		appended_artist.add_song(song)
		song.artist=appended_artist
		song 
	end 


end 