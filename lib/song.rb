require "pry"

class Song

  attr_reader :name, :artist, :genre
  @@genres = []
  @@artists = []
  @@count = 0

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artists << artist
  end

  def self.count
    @@count
  end

  def self.artists
    @@artist_hash = @@artists.tally
    @@artists = @@artists.uniq
  end
  
  def self.genres
    @@genre_hash = @@genres.tally
    @@genres = @@genres.uniq
  end

  def self.genre_count
    @@genre_hash
  end

  def self.artist_count
    @@artist_hash
  end
end

ninety_nine_problems = Song.new("99 Problems", "Jay-Z", "rap")
test2 = Song.new("test2", "Jay-Z", "rap")
test3 = Song.new("test3", "Jay-Z", "rap")
test3 = Song.new("test3", "Jay-Z", "rap")
test3 = Song.new("test3", "Jay-Z", "rap")


hell = Song.new("Hell", "The Band", "Rock")

puts Song.genres
puts Song.count
puts Song.artists
puts Song.genre_count
