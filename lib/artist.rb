

class Artist 


attr_accessor :name # one to many relationship the responsability lies on the artist

@@song_count = 0
#initialize on name and contains an array of songs

def initialize(name)
    @name = name
    @songs = []


end


def songs  #this is needed to return the songs array
  @songs
end


def self.song_count # counts the class method song count
    @@song_count
end




def add_song(song)
    @songs << song  #showell the song name into the songs array
    song.artist = self # instance method to connect the relevant artist to their song
    @@song_count += 1 # adding a song counter on a class method
end


def add_song_by_name(name)
    song = Song.new(name) #creates a new song based on the name taking the class.new and using the argument
    @songs << song  #showell the song name into the songs array
    song.artist = self # instance method to connect the relevant artist to their song
    @@song_count += 1 # adding a song counter on a class method
end






end 