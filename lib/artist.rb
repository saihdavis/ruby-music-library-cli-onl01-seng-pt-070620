class Artist 
  
  attr_accessor :name, :song 
  
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
    artist = new(name)
    artist.save
    artist 
  end
  
  def self.destroy_all
    self.all.clear
  end
  
  
  
  
  
end