require 'pry'

class Song
  
  attr_accessor :artist, :genre, :name
  
  @@count = 0
  @@artists = []
  @@genres = []
  
  def initialize(songName, songArtist, songGenre)
    @name = songName
    @artist = songArtist
    @genre = songGenre
    @@artists << songArtist
    @@genres << songGenre
	  @@count+=1
  end

  def self.genres
    @@genres.uniq
  end
  
  def self.artists
    @@artists.uniq
  end

  def self.genre_count
    binding.pry
  end
  
  def self.artist_count
    
  end
  
  def self.count
    return @@count
  end
  
end
