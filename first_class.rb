class Artwork
	attr_accessor :title, :artist
end

class Song < Artwork
	attr_accessor :album, :song
	
	def about_song
	  return "#{@title} is by #{@artist} off of the album #{@album}."
	end
end	

class Painting < Artwork
	attr_accessor :medium

	def about_painting
	  return "#{@title} is a painting by #{artist} that was done in #{medium}."
	end
end

my_song = Song.new
my_song.title = "Where is my Mind"
my_song.artist = "The Pixies"
my_song.album = "Surfer Rosa"

puts my_song.about_song

