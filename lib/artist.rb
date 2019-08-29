require 'pry'

class Artist 
  attr_accessor :name, :songs
  
  def initialize(name)
    @name = name
    @songs = []
  end
  
  def songs 
    Song.all.collect {|song| song.artist.name == self}
  end
  

  
  
end