class Artist
  attr_accessor :name
  @@all

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    this_artist_songs = []
    Song.all.each do |song|
      if song.artist == self
        this_artist_songs << song
      end
    end
    this_artist_songs
  end
end
