require 'pry'

class Artist 
  attr_accessor :name, :songs
  
  def initialize(name)
    @name = name
    @songs = []
  end
  
  def songs 
    Song.all.collect {|song| song}
  end
  
  def add_song(name)
    song = Song.new(name)
  end
  
  
end