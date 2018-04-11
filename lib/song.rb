class Song 
  attr_accessor :name, :artist, :genre
  @@count = 0 
  @@genres = []
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1 
    @@genres << genre 
  end
  
  def self.count
    @@count
  def self.genres
    @@genres
  end
  
  end
  def count
    return @@count 
  end
end
  
    