require "pry"
class Song 
  
  attr_accessor :name
  attr_reader :artist 
  
  @@all = []
  
  #binding.pry 
  def initialize(name, artist = nil, genre = nil)
    @name = name
    if artist != nil 
      self.artist = artist
    end
    if genre != nil
      self.genre = genre
  end
  save
end
  
  def artist
    @artist  
  end
  
  def artist=(artist)
    @artist = artist
    artist.add_song(self)
  end
  
  def save 
    @@all << self 
  end
  
  def self.all
    @@all
  end
  
  def self.create(song)
    song = Song.new(song)
    song.save
    song 
  end
  
  def self.destroy_all
    self.all.clear
  end
  
end