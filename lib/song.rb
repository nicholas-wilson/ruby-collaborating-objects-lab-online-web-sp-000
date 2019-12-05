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
    song = self.new((filename.split(" - ")[1]))
    song
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
    self.artist.name
  end
end
