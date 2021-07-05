require "pry"


class Song

   attr_accessor :name, :artist # this is the many to one relationship connecting the name of the song with the artist class
   
   @@all = []   
   
   def initialize(name)  

    @name = name  # initialize a song name 
    @song = []
    @@all << self
   end

   # artist name 
   def artist_name
    self.artist ? self.artist.name : nil
    
  end


def self.all
    @@all
end





end