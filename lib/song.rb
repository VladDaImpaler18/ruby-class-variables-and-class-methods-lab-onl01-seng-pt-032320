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
    counts = Hash.new(0)
	  @@genre.each { |genre| counts[genre] += 1}
	  counts
  end
  
  def self.artist_count
    counts = Hash.new(0)
	  @@artists.each { |artist| counts[artist] +=1 }
	  counts
  end
  
  def self.count
    return @@count
  end
  
end
