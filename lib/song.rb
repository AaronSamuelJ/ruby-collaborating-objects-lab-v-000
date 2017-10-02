require 'pry'
class Song
  attr_accessor :name, :artist
  def initialize(name)
    @name = name
  end
  def self.new_by_filename(filename)
    spl = filename.split(" - ")
    artist_name = spl[0]
    song_name = spl[1]
    artist = Artist.find_or_create_by_name(artist_name)
    song = Song.new(song_name)
    artist.add_song(song)
    song
  end
end
