require 'pry'

class MP3Importer

	attr_accessor :path

	def initialize(path)
		@path = path
	end 

	def files 
		Dir.entries(@path).select {|f| !File.directory? f} 
		# array = non_hidden_files.each do |file_name|
		# 	file_name.split("/")[-1]
		# end 
	end 

	def import
		self.files.map do |song_file_name|
			Song.new_by_filename(song_file_name)
		end 

	end 


end 