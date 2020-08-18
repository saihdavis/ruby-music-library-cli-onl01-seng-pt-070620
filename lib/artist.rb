require 'pry'


class Artist 
 
  
  attr_accessor :name, :songs, :genre
    @@all = []
    
  
  def initialize(name)
    @name = name
    @songs = []
  end
  
  def self.all
    @@all
  end
  
  def self.destroy_all
    self.all.clear
  end
  
  def save
    @@all << self
  end
  
  def self.create(artist)
    artist = Artist.new(artist)
    artist.save
    artist
  end
  
  def add_song(song)
    if !song.artist 
      song.artist = self 
    end
       songs.push(song) unless songs.include? (song)
  end
  
  
  
end