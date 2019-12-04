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

  end

  def artist_name=(name)
    self.artist.name = name
  end
end
