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
  
  def add_song(song)
    song.artist = self 
  end
  
  def add_song_by_name(name) 
    song = Song.new(name)
    song.artist = self
  end
  
  
end