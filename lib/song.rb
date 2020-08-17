class Song 
  
  attr_accessor :name 
  
  @@all = []
  
  def initialize(name)
    @name = name
    save
  end
  
  def save 
    @@all << self 
  end
  
  def self.all
    @@all
  end
  
  def self.create(name)
    song = new(name)
    song.save
    song 
  end
  
  def self.destroy_all
    self.all.clear
  end
  
  
  
end