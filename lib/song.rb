class Song
  attr_accessor :name, :artist
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.new_by_filename(filename)
    song_info = filename.split(" - ")
    song = Song.new(song_info[1])
    artist = Artist.find_or_create_by_name(song_info[0])
    puts artist
    song.artist = artist
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
  end
end
