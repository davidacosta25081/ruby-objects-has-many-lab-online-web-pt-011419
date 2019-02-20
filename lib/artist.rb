class Artist

attr_accessor :name

  @@all = []

   def initialize(name)
    @name = name
    @@all << self

  end

def self.all 
  @all
end

def add_song (song)
  @@all << song
  song.artist = self
end

def songs
  @@all
end

def add_song_by_name(name)
    song = Song.new(name)
    song.artist = self
end



end
