



require 'pry'
class Artist

	attr_accessor :name

	def initialize(name)
		#binding.pry
	    @name = name
		@songs = []
	end


			

	def add_song(song)
		
		song.artist = self
		@songs << song
		song
	end


	def add_song_by_name(name)
		

		song = Song.new(name)
		#binding.pry

		song.artist = self
		@songs << song
		#binding.pry
	end

	def self.song_count
Song.all.length


	end

	def songs
		@songs
	end

end