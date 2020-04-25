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
    @@artists << songArtist if !@@artists.include?(songArtist)
    @@genres << songGenre if !@@genres.include?(songGenre)
	  @@count+=1
	  binding.pry
  end

  def self.genres
    @@genres
  end
  
  def self.artists
    @@artists
  end

  def self.genre_count
    hex = {}
	  @genre.each { |genre| hex.key?(genre) ? hex[genre] += 1 : hex[genre] = 1 }
	  hex
  end
  
  def self.artist_count
    @@artists.length
    #hex = {}
	  #@artists.each { |artist| hex.key?(artist) ? hex[artist] +=1 : hex[artist] = 1 }
	  #hex
  end
  
  def self.count
    return @@count
  end
  
  def self.genre_count
    
  end
  
end
