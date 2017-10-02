require 'pry'
class Artist
  @@all = []
  attr_accessor :name
  attr_reader :songs
  def initialize(name)
    @name = name
    @songs = []
  end
  def add_song(song)
    @songs << song
    song.artist = self
  end
  def save
    @@all << self
    self
  end
  def self.all
    @@all    
  end
end
