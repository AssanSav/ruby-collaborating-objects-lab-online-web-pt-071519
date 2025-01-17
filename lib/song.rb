require 'pry'

class Song 
  attr_accessor :name, :artist
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self
  end 
  
  def self.all 
    @@all 
  end
  
  def self.new_by_filename(file)
    data = file.split(" - ") 
    song = Song.new(data[1])
    song.artist_name = data[0]
    song
    #binding.pry
  end
  
  def artist_name=(name)
    @artist = Artist.find_or_create_by_name(name)
    #binding.pry
  end
end