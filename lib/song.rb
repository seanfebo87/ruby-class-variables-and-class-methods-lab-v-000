class Song 
  attr_accessor :name, :artist, :genre
  @@count = 0 
  @@genres = []
  @@artists = []
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1 
    @@genres << genre 
    @@artists << artist
    @@genre_count
  end
  
  def self.count
    @@count
  end
  def self.artists
    @@artists.uniq 
  end
  def self.genres
    @@genres.uniq
  end
  
  def self.genre_count
    @@genre_count = Hash[*@@genres.group_by{ |x| x }.flat_map{ |y, x| [y, x.size] }]
  end

end
  
    