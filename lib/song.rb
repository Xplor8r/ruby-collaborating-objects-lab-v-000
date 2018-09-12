class Song
<<<<<<< HEAD
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end
  
  def artist_name=(name)
      self.artist = Artist.find_or_create_by_name(name)
      artist.add_song(self)
  end
 
  def self.new_by_filename(file_name)
    a_and_s = file_name.split(" - ")
    a = a_and_s[0]
    s = a_and_s[1].chomp('.mp3')
    song = self.new(song)
    song.name = s
    song.artist_name = a
    song
=======
  
  attr_accessor :name, :artist

@@all = []
  def initialize(name)
    @name = name
    @@all << self
  end
  
    def self.new_by_filename(filename)
    artist, song = filename.split(" - ")
    new_song = self.new(song)
    new_song.artist_name = artist
    new_song
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
>>>>>>> da45abdba11eeb6fb4c89b0b671739ba2eb75280
  end
  
end