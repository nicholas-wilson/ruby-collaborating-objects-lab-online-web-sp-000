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
    song_info[1] = song_info[1].slice(0, (song_info[1].length - 4))
    song = Song.new(song_info[1])
    self.artist_name=(song_info[0])
  end

  def artist_name=(name)
    found = false
    Artist.all.each do |singer|
      if singer.name == name
        self.artist = singer
        found = true
      end
      if !found
        guy = Artist.new(name)
        self.artist = guy
      end
    end
  end
end
