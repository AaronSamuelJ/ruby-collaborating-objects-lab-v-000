require 'pry'
class Song 
  attr_accessor :name, :artist 
  def initialize(name)
    @name = name 
  end
  def self.new_by_filename(filename)
    spl = filename.split(" - ")
    binding.pry
  end
end 