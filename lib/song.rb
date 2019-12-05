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
    puts song_info
    song = Song.new(song_info[1])
    song.artist_name=(song_info[0])
    puts song.artist
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
  end
end
